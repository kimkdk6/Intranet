<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

 
<script>
  $(function() {
    $( "#accordion" ).accordion({
      event: "click hoverintent",
      heightStyle: "content" 
    });
    
  });
 
  /*
   * hoverIntent | Copyright 2011 Brian Cherne
   * http://cherne.net/brian/resources/jquery.hoverIntent.html
   * modified by the jQuery UI team
   */
  $.event.special.hoverintent = {
    setup: function() {
      $( this ).bind( "mouseover", jQuery.event.special.hoverintent.handler );
    },
    teardown: function() {
      $( this ).unbind( "mouseover", jQuery.event.special.hoverintent.handler );
    },
    handler: function( event ) {
      var currentX, currentY, timeout,
        args = arguments,
        target = $( event.target ),
        previousX = event.pageX,
        previousY = event.pageY;
 
      function track( event ) {
        currentX = event.pageX;
        currentY = event.pageY;
      };
 
      function clear() {
        target
          .unbind( "mousemove", track )
          .unbind( "mouseout", clear );
        clearTimeout( timeout );
      }
 
      function handler() {
        var prop,
          orig = event;
 
        if ( ( Math.abs( previousX - currentX ) +
            Math.abs( previousY - currentY ) ) < 7 ) {
          clear();
 
          event = $.Event( "hoverintent" );
          for ( prop in orig ) {
            if ( !( prop in event ) ) {
              event[ prop ] = orig[ prop ];
            }
          }
          // Prevent accessing the original event since the new event
          // is fired asynchronously and the old event is no longer
          // usable (#6028)
          delete event.originalEvent;
 
          target.trigger( event );
        } else {
          previousX = currentX;
          previousY = currentY;
          timeout = setTimeout( handler, 100 );
        }
      }
 
      timeout = setTimeout( handler, 100 );
      target.bind({
        mousemove: track,
        mouseout: clear
      });
    }
  };
  </script>
<!-- <div class="form-group has-success" font-size="50px" padding="10px">
<label class="control-label" for="inputSuccess"><i class="fa fa-check"></i> Select Receiver</label>
</div> -->
<ul class="nav nav-pills nav-stacked">
    <li><a href="javascript:addrcv()"><i class="fa fa-circle-o text-light-blue"></i> Select Receiver</a></li>
</ul>
<!-- <div align="right">
<a href="javascript:addrcv()">
	<span font-size="50px" id="selectrcv" class="label label-warning">SELECT</span></a>
</div> -->
<div id="accordion">
	<c:forEach items="${deptlist}" var="d">
		<h3>${d.deptname}</h3>
		<div>
			<c:forEach items="${emplist}" var="e">
				<c:if test="${d.deptname == e.deptcode}">
					<input type="radio" name="name" id="name"
						value="${e.userid}">
					<i class="fa fa-fw fa-user-plus"></i> 
				${e.teamcode} ${e.ename} ${e.poscode}<hr>
				</c:if>
			</c:forEach>
		</div>
	</c:forEach>
</div>

<script type="text/javascript">

	function addrcv(){
		
		if(!$('input[name="name"]:checked').val()){
			alert("수신자를 선택해세요.");
			return false;
		}
		
		var rcv = $('input[name="name"]:checked').val().trim();
		console.log("rcv id:"+rcv);
		// window.opener-------->부모창 나를 열수있게한놈
		window.opener.document.noteWrite.receiveid.value = rcv;
		window.close(); // 나는 닫힐거에요
	}
</script>

