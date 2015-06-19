<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="utf-8">
<title id="document-title">GW</title>
<link rel="icon"
	href="../../../app/theme/default_100_percent/common/favicon_print_preview.png">

<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
html {
	height: 100%;
	overflow: hidden;
}

body {
	display: -webkit-box;
	height: 100%;
	margin: 0;
}

/* Header */
header {
	-webkit-padding-end: 19px;
	-webkit-padding-start: 20px;
	background-color: #F6F6F6;
	border-bottom: 1px solid #d2d2d2;
}

#print-preview #navbar-container {
	-webkit-border-end: 1px solid #c8c8c8;
	-webkit-box-orient: vertical;
	-webkit-user-select: none;
	background-color: white;
	display: -webkit-box;
	position: relative;
	width: 310px;
	z-index: 2;
}

#navbar-content-title {
	color: black;
	font-size: 15px;
	font-weight: normal;
	margin: 0;
	padding-bottom: 6px;
	padding-top: 16px;
}

#navbar-scroll-container {
	-webkit-box-flex: 1;
	background: #fbfbfb;
	border-top: 1px solid #f3f3f3;
	overflow-y: auto;
	padding-top: 2px;
}

/* Settings */
.two-column {
	display: table-row;
}

.right-column {
	-webkit-padding-end: 20px;
	display: table-cell;
	width: 99%;
}

.right-column .checkbox, .right-column .radio {
	margin: 0;
}

.right-column .checkbox label, .right-column .radio label {
	padding-bottom: 5px;
	padding-top: 10px;
}

.right-column .radio input[type='radio'] {
	height: 13px;
	width: 13px;
}

.left-column {
	-webkit-padding-end: 20px;
	-webkit-padding-start: 20px;
	display: table-cell;
	min-width: 70px;
	vertical-align: middle;
}

.left-column h1 {
	color: #646464;
	font-size: 12px;
	margin-bottom: 0;
	margin-top: 0;
}

.two-column.visible .left-column, .two-column.visible .right-column {
	padding-bottom: 5px;
	padding-top: 5px;
}

.two-column:not (.visible ) .left-column, .two-column:not (.visible )
	.right-column {
	-webkit-transition: padding-bottom 150ms, padding-top 150ms;
	padding-bottom: 0;
	padding-top: 0;
}

.two-column:not (.visible ) select {
	border-top-width: 0;
	margin-top: 0;
	padding-top: 0;
}

p {
	-webkit-line-box-contain: block;
	margin: 0;
	margin-bottom: 10px;
}

h1 {
	color: #808080;
	font-weight: 300;
}

#print-preview .navbar-link {
	margin: 8px 20px;
}

#print-preview .navbar-link.disabled {
	color: rgba(0, 0, 0, .5);
	cursor: default;
	pointer-events: none;
}

button.loading {
	cursor: progress;
}

#print-preview button.default {
	font-weight: bold;
}

#print-preview
 
button
.default
:not
 
(
:focus
 
)
:not
 
(
:disabled
 
)
{
border-color
:
 
#808080
;


}
span.hint {
	-webkit-transition: color 200ms;
	background: white;
	display: block;
	font-size: 0.9em;
	font-weight: bold;
	height: 0;
	line-height: 10px;
	margin: 0;
	overflow: hidden;
}

span.hint.visible {
	-webkit-animation-duration: 200ms;
	-webkit-animation-fill-mode: forwards;
	-webkit-user-select: text;
	color: rgb(140, 20, 20);
	height: auto;
	margin-bottom: -5px;
	margin-top: 5px;
	padding-bottom: 5px;
}

span.hint.closing {
	-webkit-transition: margin 150ms, height 150ms, opacity 150ms;
	background: transparent;
	height: 0 !important;
	margin: 0;
	opacity: 0;
}

.collapsible {
	height: 0;
	position: relative;
}

.collapsible.visible {
	-webkit-animation-duration: 200ms;
	-webkit-animation-fill-mode: forwards;
	height: auto;
}

.collapsible.closing {
	-webkit-transition: margin 150ms, height 150ms, opacity 150ms;
	height: 0 !important;
	opacity: 0;
	overflow: hidden;
}

.collapsible.closing>* {
	position: absolute;
}

select {
	width: 100%;
}

label {
	-webkit-user-select: none;
}

.hidden-section {
	background: white;
	position: relative;
}

.extra {
	background: white;
	height: 0;
	opacity: 0;
	padding-top: 0;
	position: absolute;
	visibility: hidden;
}

.visible .extra {
	-webkit-animation-duration: 200ms;
	-webkit-animation-fill-mode: forwards;
	height: auto;
	opacity: 1;
	overflow: hidden;
	padding-bottom: 0;
	position: static;
	visibility: visible;
}

.closing .extra {
	-webkit-transition: padding-top 100ms, height 100ms, opacity 200ms,
		background 300ms;
	height: 0 !important;
	opacity: 0;
	overflow: hidden;
	padding-top: 0;
	position: static;
	visibility: visible;
}

/* Individual settings sections  */

/* TODO(estade): this should be in a shared location but I'm afraid of the
 * damage it could do. */
[hidden] {
	display: none !important;
}

@
-webkit-keyframes dancing-dots-jump { 0% {
	top: 0;
}

55%
{
top


:

 

0;
}
60%
{
top


:

 

-10
px


;
}
80%
{
top


:

 

3
px


;
}
90%
{
top


:

 

-2
px


;
}
95%
{
top


:

 

1
px


;
}
100%
{
top


:

 

0;
}
}
span.jumping-dots>span {
	-webkit-animation: dancing-dots-jump 1800ms infinite;
	padding: 1px;
	position: relative;
}

span.jumping-dots>span:nth-child(2) {
	-webkit-animation-delay: 100ms;
}

span.jumping-dots>span:nth-child(3) {
	-webkit-animation-delay: 300ms;
}

#print-header .button-strip {
	-webkit-box-orient: horizontal;
	-webkit-box-pack: end;
	display: -webkit-box;
}

#print-header .button-strip button {
	-webkit-margin-start: 9px;
	display: block;
}

#link-container {
	-webkit-box-orient: vertical;
	display: -webkit-box;
	margin: 7px 0;
}

#link-container>div {
	display: flex;
}

#link-container>div>.throbber {
	margin: 8px;
	min-height: 16px;
	min-width: 16px;
}

#main-container {
	-webkit-border-start: 1px solid #dcdcdc;
	-webkit-box-flex: 1;
	-webkit-box-orient: vertical;
	display: -webkit-box;
	height: 100%;
	position: relative;
}

html
:not
 
(
.focus-outline-visible
 
)
:enabled
:focus
:-webkit-any
 
(
input
[
type
=
'checkbox'
]
,
input
[
type
=
'radio'
]
,
button
 
)
{
/* Cancel border-color for :focus specified in widgets.css. */
border-color
:
 
rgba
(0
,
0,
0,
0
.25
);


}
html:not (.focus-outline-visible ) [is='action-link']:focus {
	outline: none;
}
</style>
<link rel="stylesheet" href="chrome://resources/css/chrome_shared.css">
<link rel="stylesheet" href="chrome://resources/css/throbber.css">
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#print-header {
	padding-bottom: 20px;
	padding-top: 6px;
}

#print-header .summary {
	display: block;
	min-height: 34px;
}

#print-header .print:enabled {
	/* TODO(dbeam): reconcile this with overlay.css' .default-button. */
	background-color: rgb(77, 144, 254);
	background-image: linear-gradient(to bottom, rgb(77, 144, 254),
		rgb(71, 135, 237));
	border: 1px solid rgb(48, 121, 237);
	color: #fff;
	text-shadow: 0 1px rgba(0, 0, 0, 0.1);
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
.search-box {
	-webkit-user-select: none;
	position: relative;
}

.search-box-icon {
	-webkit-user-select: none;
	display: inline-block;
	height: 12px;
	left: 8px;
	position: absolute;
	right: 8px;
	top: 6px;
	width: 12px;
}

.search-box-input {
	text-indent: 24px;
	width: 100%;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */

/* Container for the elements that make up the search bubble. */
.search-bubble {
	left: 0;
	margin-top: 5px;
	pointer-events: none;
	position: absolute;
	top: -1000px; /* Minor hack: position off-screen by default. */
	/* Create a z-context for search-bubble-innards, its after and before. */
	z-index: 1;
}

/* Contains the text content of the bubble.  */
.search-bubble-innards {
	background: linear-gradient(rgba(255, 248, 172, 0.9),
		rgba(255, 243, 128, 0.9));
	border-radius: 2px;
	overflow: hidden;
	padding: 4px 10px;
	text-align: center;
	text-overflow: ellipsis;
	width: 100px;
}

/* Provides the border around the bubble (has to be behind ::after). */
.search-bubble-innards::before {
	border: 1px solid rgb(220, 198, 72);
	border-radius: 2px;
	bottom: -1px;
	content: '';
	left: -1px;
	position: absolute;
	right: -1px;
	top: -1px;
	z-index: -2;
}

/* Provides the arrow which points at the anchor element. */
.search-bubble-innards::after {
	-webkit-transform: rotate(45deg);
	background: linear-gradient(-45deg, rgb(251, 255, 181),
		rgb(255, 248, 172) 50%, rgba(255, 248, 172, 0));
	border: 1px solid rgb(220, 198, 72);
	border-bottom-color: transparent;
	border-right-color: transparent;
	content: '';
	height: 12px;
	left: 53px;
	position: absolute;
	top: -7px;
	width: 12px;
	z-index: -1;
}

.search-bubble-wrapper {
	position: relative;
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#destination-settings .left-column {
	padding-top: 20px;
	vertical-align: top;
}

#destination-settings .throbber {
	display: block;
	margin-bottom: 4px;
	margin-top: 8px;
}

#destination-settings .destination-settings-box {
	-webkit-box-align: center;
	display: -webkit-box;
	min-height: 28px;
}

.destination-settings-box.stale {
	opacity: 0.4;
}

#destination-settings .destination-settings-change-button {
	margin: 10px 0;
}

.destination-settings-icon {
	-webkit-margin-end: 8px;
	height: 24px;
	vertical-align: middle;
	width: 24px;
}

.destination-settings-info-wrapper {
	-webkit-box-flex: 1;
}

.destination-settings-info {
	display: table;
	table-layout: fixed;
	width: 100%;
}

.throbber-container {
	-webkit-box-orient: horizontal;
	display: -webkit-box;
}

.throbber-container .throbber {
	-webkit-margin-end: 8px;
}

.destination-throbber-name-container {
	-webkit-box-flex: 1;
	-webkit-box-orient: vertical;
	-webkit-box-pack: center;
	display: -webkit-box;
	min-height: 28px;
}

.destination-throbber-name {
	font-size: 110%;
	overflow: hidden;
	text-overflow: ellipsis;
}

.destination-settings-info>div {
	display: table-row;
}

.destination-settings-info>div>div {
	display: table-cell;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.destination-settings-name {
	font-size: 110%;
}

.destination-settings-location {
	opacity: 0.4;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#color-settings .color-settings-select {
	height: 28px;
	margin: 10px 0;
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#copies-settings input.copies {
	height: 29px;
	position: relative;
	width: 2.75em;
}

#copies-settings-box {
	margin: 10px 0;
}

#copies-settings input.copies.invalid {
	background: rgb(255, 240, 240);
	color: rgb(140, 20, 20);
}

#copies-settings button.increment:focus, #copies-settings button.decrement:focus,
	#copies-settings:focus {
	z-index: 1;
}

#copies-settings .collate-container {
	-webkit-padding-start: 16px;
	display: inline-block;
}

#copies-settings button.increment, #copies-settings button.decrement {
	-webkit-padding-end: 0;
	-webkit-padding-start: 0;
	font-weight: 600;
	height: 29px;
	margin: 0;
	min-width: 0;
	position: relative;
	width: 2em;
}

#copies-settings button.increment {
	-webkit-margin-start: -5px;
	border-radius: 0;
}

#copies-settings button.decrement {
	-webkit-margin-start: -5px;
	border-bottom-left-radius: 0;
	border-bottom-right-radius: 3px;
	border-top-left-radius: 0;
	border-top-right-radius: 3px;
}

html[dir='rtl'] #copies-settings button.decrement {
	border-bottom-left-radius: 3px;
	border-bottom-right-radius: 0;
	border-top-left-radius: 3px;
	border-top-right-radius: 0;
}

#copies-settings .collate-container label {
	padding-top: 6px;
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#page-settings .left-column {
	padding-top: 16px;
	vertical-align: top;
}

#page-settings .page-settings-print-pages-div {
	-webkit-box-align: center;
	display: -webkit-box;
	padding: 0;
}

#page-settings .page-settings-custom-input-wrapper {
	-webkit-box-flex: 1;
	-webkit-margin-start: 0.6em;
	height: 28px;
	position: relative;
}

#page-settings .page-settings-custom-input {
	height: 28px;
	position: absolute;
	width: 100%;
}

#page-settings .page-settings-custom-input.invalid {
	background: rgb(255, 240, 240);
	color: rgb(140, 20, 20);
}

#page-settings .radio {
	margin-bottom: 10px;
}
</style>
<style>/* Copyright 2013 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#margin-settings .margin-settings-select {
	height: 28px;
	margin: 10px 0;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#media-size-settings .settings-select {
	height: 28px;
	margin: 10px 0;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#layout-settings .layout-settings-select {
	height: 28px;
	margin: 10px 0;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#dpi-settings .settings-select {
	height: 28px;
	margin: 10px 0;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#other-options-settings .left-column {
	padding-top: 16px;
	vertical-align: top;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#advanced-options-settings .advanced-options-settings-button {
	margin: 10px 0;
	min-height: 28px;
	width: 100%;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#advanced-settings {
	z-index: 3;
}

#advanced-settings.transparent {
	opacity: 0;
	overflow: hidden;
	pointer-events: none;
}

#advanced-settings .page {
	width: 500px;
}

#advanced-settings>.page>.close-button {
	top: 9px;
}

#advanced-settings .search-box-area {
	padding: 15px 17px;
}

#advanced-settings .search-box {
	-webkit-user-select: none;
}

#advanced-settings .no-settings-match-hint {
	-webkit-padding-start: 17px;
	color: #999;
	padding-bottom: 8px;
	padding-top: 8px;
}

#advanced-settings .settings-area {
	overflow-y: auto;
	padding: 0 17px;
}

#advanced-settings .settings {
	border-spacing: 0;
	display: table;
	position: relative;
	width: 100%;
}

.advanced-settings-item-extra-padding {
	display: table-row;
	height: 15px;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
.advanced-settings-item {
	cursor: default;
	display: table-row;
}

.advanced-settings-item>* {
	padding-bottom: 15px;
	padding-top: 10px;
}

.advanced-settings-item-label {
	-webkit-padding-end: 20px;
	display: table-cell;
	overflow: hidden;
	text-overflow: ellipsis;
	vertical-align: middle;
	white-space: nowrap;
	width: 250px;
}

.advanced-settings-item-name .search-hint {
	-webkit-margin-start: 1em;
	color: #999;
	font-size: 75%;
}

.advanced-settings-item-query-highlight {
	background-color: rgba(255, 240, 120, 0.9);
}

.advanced-settings-item-value {
	display: table-cell;
	overflow: hidden;
	text-overflow: ellipsis;
	vertical-align: middle;
	white-space: nowrap;
	width: 175px;
}

.advanced-settings-item-value-select-control {
	line-height: 24px;
}

.advanced-settings-item-value-text-control {
	height: 28px;
	line-height: 24px;
	width: 175px;
}
</style>
<style>/* Copyright 2014 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#more-settings {
	background-color: #f6f6f6;
	border-bottom: 1px solid #e1e1e1;
	border-top: 1px solid #e1e1e1;
	margin-top: 4px;
	min-height: 51px;
}

#more-settings .more-settings-icon {
	background-repeat: no-repeat;
	display: inline-block;
	height: 11px;
	margin: 20px 15px 20px 20px;
	vertical-align: middle;
	width: 11px;
}

#more-settings .more-settings-label {
	display: inline;
	height: 28px;
	margin: 10px 0;
}

#more-settings .more-settings-icon-minus {
	background-image: -webkit-image-set(url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAALCAYAAACprHcmAAAAHUlEQVQY02P8//8/A7GAcZAoTklJ+T8IFA/BoAMA30wedUfpLPAAAAAASUVORK5CYII=)
		1x,
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAQAAABuvaSwAAAAHElEQVQoz2P8z0A8YBxVTB/FKf+HnuLRGBx8igGMwReRPmLOxgAAAABJRU5ErkJggg==)
		2x);
}

#more-settings .more-settings-icon-plus {
	background-image: -webkit-image-set(url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAsAAAALCAYAAACprHcmAAAAH0lEQVQY02NISUlhQMP/kTCKHMPgUfyfWExbxUMt6AD5+saU01gSGAAAAABJRU5ErkJggg==)
		1x,
		url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAWCAQAAABuvaSwAAAAIklEQVQoz2NIYcCA/6EQQ4ZhVDGdFP8nHg4axaMxOOgUAwD2tVyAkFnSoAAAAABJRU5ErkJggg==)
		2x);
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#preview-area.preview-area {
	-webkit-box-flex: 1;
	-webkit-user-select: none;
	background-color: #e6e6e6;
	overflow: hidden;
	position: relative;
}

.preview-area-plugin-wrapper {
	height: 100%;
	position: absolute;
	width: 100%;
}

#preview-area .preview-area-plugin {
	/* pluginFadeInTransitionDuration = 200ms */
	-webkit-transition: opacity 200ms linear;
	/* pluginFadeInTransitionDelay = overlayFadeOutTransitionDuration = 100ms */
	-webkit-transition-delay: 100ms;
	border: none;
	cursor: inherit;
	height: 100%;
	opacity: 1;
	width: 100%;
}

#preview-area .preview-area-plugin.invisible {
	/* pluginFadeOutTransitionDuration = 100ms */
	-webkit-transition: opacity 100ms linear;
	/* pluginFadeOutTransitionDelay = 250ms */
	-webkit-transition-delay: 250ms;
	opacity: 0;
}

#preview-area .preview-area-overlay-layer {
	-webkit-transition: opacity 200ms linear;
	/* overlayFadeInTransitionDelay = pluginFadeOutTransitionDelay +
   *     pluginFadeOutTransitionDuration = 350ms */
	-webkit-transition-delay: 350ms;
	-webkit-user-select: none;
	background: #e6e6e6;
	height: 100%;
	margin: 0;
	opacity: 1;
	position: absolute;
	width: 100%;
	z-index: 1;
}

#preview-area .preview-area-overlay-layer.invisible {
	/* overlayFadeOutTransitionDuration = 100ms */
	-webkit-transition: opacity 100ms linear;
	opacity: 0;
	pointer-events: none;
}

#preview-area .preview-area-messages {
	height: 100%;
}

#preview-area .preview-area-message {
	color: #404040;
	font-size: 1.1em;
	position: relative;
	text-align: center;
	text-shadow: 0 1px 0 rgba(255, 255, 255, .5);
	top: 50%;
}

#preview-area .preview-area-no-plugin-action-area {
	margin-top: 12px;
}

#preview-area .preview-area-open-system-dialog-button-throbber {
	vertical-align: middle;
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
.margin-control-container-dragging-vertical {
	cursor: ns-resize;
}

.margin-control-container-dragging-horizontal {
	cursor: ew-resize;
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#preview-area .margin-control {
	-webkit-transition: opacity 150ms linear;
	position: absolute;
}

#preview-area .margin-control.invisible {
	opacity: 0;
	pointer-events: none;
}

#preview-area .margin-control.margin-control-top, #preview-area .margin-control.margin-control-bottom
	{
	cursor: ns-resize;
	padding: 8px 0;
	width: 100%;
}

#preview-area .margin-control.margin-control-left, #preview-area .margin-control.margin-control-right
	{
	cursor: ew-resize;
	height: 100%;
	padding: 0 8px;
}

#preview-area .margin-control.margin-control-disabled {
	cursor: default;
}

#preview-area .margin-control-line {
	border-color: rgb(64, 128, 250);
	border-style: dashed;
	border-width: 1px;
}

#preview-area .margin-control-disabled .margin-control-line {
	border-color: gray;
}

#preview-area .margin-control-top .margin-control-line, #preview-area .margin-control-bottom .margin-control-line
	{
	width: 100%;
}

#preview-area .margin-control-left .margin-control-line, #preview-area .margin-control-right .margin-control-line
	{
	height: 100%;
}

#preview-area .margin-control-textbox {
	background-color: #2a2a2a;
	border: 1px solid #888;
	box-sizing: border-box;
	color: white;
	cursor: auto;
	font-size: 0.8em;
	height: 25px;
	padding: 5px 0;
	position: absolute;
	text-align: center;
	width: 60px;
}

#preview-area .margin-control-textbox.invalid {
	background-color: rgb(193, 27, 23);
}

#preview-area .margin-control-top .margin-control-textbox {
	left: 50%;
	top: 8px;
}

#preview-area .margin-control-right .margin-control-textbox {
	right: 8px;
	top: 50%;
}

#preview-area .margin-control-bottom .margin-control-textbox {
	bottom: 8px;
	right: 50%;
}

#preview-area .margin-control-left .margin-control-textbox {
	bottom: 50%;
	left: 8px;
}
</style>
<link rel="stylesheet" href="chrome://resources/css/overlay.css">
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#no-destinations-promo {
	z-index: 2;
}

#no-destinations-promo .page {
	width: 510px;
}

.hbox {
	-webkit-box-orient: horizontal;
	display: -webkit-box;
}

.stretch {
	-webkit-box-flex: 1;
}
</style>

<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
.destination-list>header {
	-webkit-padding-start: 0;
	background-color: transparent;
	padding-bottom: 8px;
}

.destination-list .title {
	-webkit-padding-end: 8px;
	-webkit-padding-start: 4px;
	display: inline;
	vertical-align: middle;
}

.destination-list .action-link {
	vertical-align: middle;
}

.destination-list>ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.destination-list .throbber-container {
	display: inline;
	padding: 0 16px 0 8px;
	position: relative;
}

.destination-list .throbber {
	position: absolute;
	top: -1px;
}

.destination-list .no-destinations-message {
	-webkit-padding-start: 18px;
	color: #999;
	padding-bottom: 8px;
	padding-top: 8px;
}

.destination-list>footer {
	-webkit-padding-start: 18px;
	padding-top: 6px;
}

.destination-list .total {
	color: #999;
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
.destination-list-item {
	-webkit-padding-end: 2px;
	-webkit-padding-start: 18px;
	cursor: default;
	padding-bottom: 3px;
	padding-top: 3px;
}

:not (.moving ).destination-list-item {
	-webkit-transition: background-color 150ms;
}

.destination-list-item:hover, .destination-list-item:focus {
	background-color: rgb(228, 236, 247);
}

.destination-list-item:focus {
	outline: none;
}

.destination-list-item.stale {
	opacity: 0.4;
}

.destination-list-item-content {
	display: flex;
}

.destination-list-item-icon {
	-webkit-margin-end: 8px;
	-webkit-transition: opacity 150ms;
	display: inline-block;
	flex: 0 0 auto;
	height: 24px;
	vertical-align: middle;
	width: 24px;
}

.destination-list-item-name {
	flex: 0 1 auto;
	line-height: 24px;
	overflow: hidden;
	text-overflow: ellipsis;
	vertical-align: middle;
	white-space: nowrap;
}

.destination-list-item-name .search-hint {
	-webkit-margin-start: 1em;
	color: #999;
	font-size: 75%;
}

.destination-list-item .offline-status {
	-webkit-margin-start: 1em;
	flex: 0 0 auto;
	font-size: 75%;
	line-height: 24px;
	vertical-align: middle;
}

.register-promo {
	-webkit-margin-start: 1em;
	flex: 0 0 auto;
}

.destination-list-item-query-highlight {
	background-color: rgba(255, 240, 120, 0.9);
}

.extension-controlled-indicator {
	display: flex;
	flex: 1;
	justify-content: flex-end;
	min-width: 150px;
}

.extension-name {
	-webkit-margin-start: 1em;
	color: #999;
	line-height: 24px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.extension-icon {
	background-position: center;
	background-repeat: no-repeat;
	cursor: pointer;
	flex: 0 0 auto;
	height: 24px;
	margin: 0 3px;
	width: 24px;
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
#destination-search {
	z-index: 3;
}

#destination-search.transparent {
	opacity: 0;
	overflow: hidden;
	pointer-events: none;
}

#destination-search .page {
	width: 640px;
}

#destination-search .user-info {
	display: flex;
	position: absolute;
	right: 40px;
	text-align: right;
	top: 14px;
	width: 350px;
}

[dir='rtl'] #destination-search .user-info {
	left: 40px;
	right: auto;
}

#destination-search .account-select-label {
	-webkit-user-select: none;
	flex: 1;
	height: 2em;
	line-height: 2em;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

#destination-search .account-select {
	flex: 1;
	margin-left: 8px;
}

#destination-search>.page>.close-button {
	top: 9px;
}

#destination-search .search-box {
	-webkit-user-select: none;
	margin: 14px;
}

#destination-search .lists {
	-webkit-box-flex: 1;
	overflow-y: auto;
}

#destination-search .lists>* {
	-webkit-user-select: none;
	padding: 0 14px 18px;
}

#destination-search .lists>:last-child {
	padding-bottom: 0;
}

#destination-search .invitation-container {
	-webkit-animation: invitation-fadein 500ms;
	-webkit-box-align: center;
	-webkit-box-orient: vertical;
}

@
-webkit-keyframes invitation-fadein {from { opacity:0;
	
}

to {
	opacity: 1;
}

}
#destination-search .invitation-text {
	padding-bottom: 12px;
}

#destination-search .invitation-buttons {
	align-items: center;
	display: flex;
	justify-content: center;
}

#destination-search
 
.invitation-buttons
>
*
:not
 
(
:first-child
 
)
{
-webkit-margin-start
:
 
10
px
;


}
#destination-search #invitation-process-throbber {
	display: block;
}

#destination-search .cloudprint-promo {
	-webkit-box-align: center;
	-webkit-user-select: none;
}

#destination-search .cloudprint-promo .sign-in[is='action-link'] {
	padding: inherit;
}

#destination-search .cloudprint-promo .icon {
	-webkit-margin-end: 12px;
	display: block;
	height: 24px;
	width: 24px;
}

#destination-search .cloudprint-promo .promo-text {
	-webkit-box-flex: 1;
}

#destination-search .cloudprint-promo .close-button {
	-webkit-margin-start: 12px;
	background-image: -webkit-image-set(url(chrome://theme/IDR_CLOSE_DIALOG) 1x,
		url(chrome://theme/IDR_CLOSE_DIALOG@2x) 2x);
	background-repeat: no-repeat;
	background-size: 14px;
	height: 14px;
	width: 14px;
}

#destination-search .cloudprint-promo .close-button:hover {
	background-image: -webkit-image-set(url(chrome://theme/IDR_CLOSE_DIALOG_H) 1x,
		url(chrome://theme/IDR_CLOSE_DIALOG_H@2x) 2x);
}

#destination-search .cloudprint-promo .close-button:active {
	background-image: -webkit-image-set(url(chrome://theme/IDR_CLOSE_DIALOG_P) 1x,
		url(chrome://theme/IDR_CLOSE_DIALOG_P@2x) 2x);
}
</style>
<style>/* Copyright (c) 2012 The Chromium Authors. All rights reserved.
 * Use of this source code is governed by a BSD-style license that can be
 * found in the LICENSE file. */
.fedex-tos {
	-webkit-transition: height 300ms;
	overflow: hidden;
	padding: 0 36px;
	text-align: center;
}

.fedex-tos .tos-text {
	padding: 8px 0;
}

.fedex-tos .agreement-box {
	padding-bottom: 8px;
}
</style>

<script src="chrome://resources/js/action_link.js"></script>
<script src="chrome://resources/js/cr.js"></script>
<script src="chrome://resources/js/cr/event_target.js"></script>
<script src="chrome://resources/js/cr/ui.js"></script>
<script src="chrome://resources/js/cr/ui/focus_manager.js"></script>
<script src="chrome://resources/js/cr/ui/focus_outline_manager.js"></script>
<script src="chrome://resources/js/cr/ui/node_utils.js"></script>
<script src="chrome://resources/js/event_tracker.js"></script>
<script src="chrome://resources/js/load_time_data.js"></script>
<script src="chrome://resources/js/util.js"></script>
<script src="chrome://print/print_preview.js"></script>
<script src="chrome://print/strings.js"></script>
</head>

<body>
	<div id="navbar-container">
		<header>
		<h1 id="navbar-content-title" i18n-content="title">인쇄</h1>
		<div id="print-header">
			<span class="summary" aria-label="합계: 1장">합계: <b>1</b><b>장</b></span>
			<div class="button-strip" reversed="">
				<button class="print default" i18n-content="printButton">인쇄</button>
				<button class="cancel" i18n-content="cancel">취소</button>
			</div>
		</div>

		</header>
		<div id="navbar-scroll-container">
			<div id="settings">
				<div id="destination-settings" class="two-column visible">
					<div class="left-column">
						<h1 i18n-content="destinationLabel">대상</h1>
					</div>
					<div class="right-column">
						<div class="throbber-container" hidden="">
							<div class="throbber"></div>
							<div class="destination-throbber-name-container">
								<div class="destination-throbber-name"></div>
							</div>
						</div>
						<div class="destination-settings-box">
							<img class="destination-settings-icon" alt=""
								src="images/printer.png">
							<div class="destination-settings-info-wrapper">
								<div class="destination-settings-info">
									<div>
										<div class="destination-settings-name" title="HP ePrint">HP
											ePrint</div>
									</div>
									<div>
										<div class="destination-settings-location" title=""></div>
									</div>
									<div>
										<div class="destination-settings-offline-status" title=""
											hidden=""></div>
									</div>
								</div>
							</div>
						</div>
						<button class="destination-settings-change-button"
							i18n-content="changeDestination">변경...</button>
					</div>
				</div>

				<div id="page-settings" class="two-column page-settings visible">
					<div class="left-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<h1 i18n-content="pagesLabel">페이지</h1>
						</div>
					</div>
					<div class="right-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<div class="radio">
								<label> <input class="page-settings-all-radio"
									name="pages" checked="" type="radio"> <span
									i18n-content="optionAllPages">전체</span>
								</label>
							</div>
							<div class="radio">
								<label class="page-settings-print-pages-div"
									for="page-settings-custom-input"> <input
									class="page-settings-custom-radio" name="pages" type="radio"
									i18n-values="aria-label:printPagesLabel;"
									aria-label="특정 페이지 인쇄">
									<div class="page-settings-custom-input-wrapper">
										<input class="page-settings-custom-input" type="text"
											id="page-settings-custom-input"
											i18n-values="placeholder:examplePageRangeText;
                              aria-label:examplePageRangeText"
											placeholder="예: 1-5, 8, 11-13" aria-label="예: 1-5, 8, 11-13">
									</div>
								</label> <span class="page-settings-custom-hint hint suggestion"
									aria-hidden="true" aria-live="polite">잘못된 페이지 범위입니다. 예:
									1-5, 8, 11-13을(를) 사용하세요.</span>
							</div>
						</div>
					</div>
				</div>

				<div id="copies-settings" class="two-column visible">
					<div class="left-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<h1 id="copies-label" i18n-content="copiesLabel">매수</h1>
						</div>
					</div>
					<div class="right-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<div id="copies-settings-box">
								<input class="copies" type="text" value="1" maxlength="3"
									aria-labelledby="copies-label" aria-live="polite" id="copies">
								<button class="increment"
									i18n-values="title:incrementTitle;aria-label:incrementTitle"
									aria-controls="copies" title="더보기" aria-label="더보기">+</button>
								<button class="decrement"
									i18n-values="title:decrementTitle;aria-label:decrementTitle"
									aria-controls="copies" title="간략히 보기" aria-label="간략히 보기"
									disabled="">–</button>
								<div class="collate-container checkbox" aria-live="polite"
									hidden="">
									<label> <input class="collate" type="checkbox"
										checked="" aria-labelledby="copies-collate-label"> <span
										id="copies-collate-label" i18n-content="optionCollate">한
											부씩 인쇄</span>
									</label>
								</div>
							</div>
							<span class="hint" i18n-content="copiesInstruction"
								aria-live="polite">숫자로 인쇄 매수를 표시하세요(1 이상).</span>
						</div>
					</div>
				</div>

				<div id="layout-settings" class="two-column layout-settings visible">
					<div class="left-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<h1 id="layout-label" i18n-content="layoutLabel">레이아웃</h1>
						</div>
					</div>
					<div class="right-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<select class="layout-settings-select"
								aria-labelledby="layout-label">
								<option i18n-content="optionPortrait" value="portrait"
									selected="">세로 방향</option>
								<option i18n-content="optionLandscape" value="landscape">가로
									방향</option>
							</select>
						</div>
					</div>
				</div>

				<div id="color-settings" class="color-settings two-column visible"
					aria-live="polite">
					<div class="left-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<h1 id="color-label" i18n-content="optionColor">컬러</h1>
						</div>
					</div>
					<div class="right-column">
						<div class="collapsible invisible visible" aria-hidden="false"
							style="">
							<select class="color-settings-select"
								aria-labelledby="color-label">
								<option i18n-content="optionBw" value="bw" selected="">흑백</option>
								<option i18n-content="optionColor" value="color">컬러</option>
							</select>
						</div>
					</div>
				</div>

				<div id="media-size-settings" class="two-column media-size-settings"
					hidden="">
					<div class="left-column">
						<h1 id="media-size-label" i18n-content="mediaSizeLabel">용지 크기</h1>
					</div>
					<div class="right-column">
						<select class="settings-select" aria-labelledby="media-size-label"><option
								value="{&quot;custom_display_name&quot;:&quot;레터&quot;,&quot;height_microns&quot;:279400,&quot;is_default&quot;:true,&quot;name&quot;:&quot;NA_LETTER&quot;,&quot;vendor_id&quot;:&quot;1&quot;,&quot;width_microns&quot;:215900}">레터</option>
							<option
								value="{&quot;custom_display_name&quot;:&quot;4x6&quot;,&quot;height_microns&quot;:152400,&quot;name&quot;:&quot;NA_INDEX_4X6&quot;,&quot;vendor_id&quot;:&quot;5139&quot;,&quot;width_microns&quot;:101600}">4x6</option>
							<option
								value="{&quot;custom_display_name&quot;:&quot;A4&quot;,&quot;height_microns&quot;:297000,&quot;name&quot;:&quot;ISO_A4&quot;,&quot;vendor_id&quot;:&quot;9&quot;,&quot;width_microns&quot;:209900}">A4</option></select>
					</div>
				</div>

				<div id="margin-settings" class="two-column margin-settings"
					hidden="">
					<div class="left-column">
						<h1 id="margin-label" i18n-content="marginsLabel">여백</h1>
					</div>
					<div class="right-column">
						<select class="margin-settings-select"
							aria-labelledby="margin-label">
							<!-- The order of these options must match the natural order of their
      values, which come from print_preview.ticket_items.MarginsType.Value. -->
							<option i18n-content="defaultMargins" value="0" selected="">기본값</option>
							<option i18n-content="noMargins" value="1">없음</option>
							<option i18n-content="minimumMargins" value="2">최소</option>
							<option i18n-content="customMargins" value="3">맞춤</option>
						</select>
					</div>
				</div>

				<div id="dpi-settings" class="two-column dpi-settings" hidden="">
					<div class="left-column">
						<h1 id="dpi-label" i18n-content="dpiLabel">품질</h1>
					</div>
					<div class="right-column">
						<select class="settings-select" aria-labelledby="dpi-label"></select>
					</div>
				</div>

				<div id="other-options-settings"
					class="other-options-settings two-column visible">
					<div class="left-column">
						<div class="collapsible invisible visible" aria-hidden="false">
							<h1 i18n-content="optionsLabel">옵션</h1>
						</div>
					</div>
					<div class="right-column checkbox">
						<div id="other-options-collapsible"
							class="collapsible invisible visible" aria-hidden="false">
							<div class="header-footer-container checkbox" hidden="">
								<label aria-live="polite"> <input
									class="header-footer-checkbox" type="checkbox"> <span
									i18n-content="optionHeaderFooter">머리글과 바닥글</span>
								</label>
							</div>
							<div class="fit-to-page-container checkbox" hidden="">
								<label aria-live="polite"> <input
									class="fit-to-page-checkbox" type="checkbox"> <span
									i18n-content="optionFitToPage">페이지 맞춤</span>
								</label>
							</div>
							<div class="duplex-container checkbox">
								<label aria-live="polite"> <input
									class="duplex-checkbox" type="checkbox"> <span
									i18n-content="optionTwoSided">양면</span>
								</label>
							</div>
							<div class="css-background-container checkbox" hidden="">
								<label aria-live="polite"> <input
									class="css-background-checkbox" type="checkbox"> <span
									i18n-content="optionBackgroundColorsAndImages">배경 그래픽</span>
								</label>
							</div>
							<div class="selection-only-container checkbox" hidden="">
								<label aria-live="polite"> <input
									class="selection-only-checkbox" type="checkbox"> <span
									i18n-content="optionSelectionOnly">선택 영역만</span>
								</label>
							</div>
						</div>
					</div>
				</div>

				<div id="advanced-options-settings" class="two-column" hidden="">
					<div class="left-column">
						<div class="collapsible closing" hidden="">
							<h1 i18n-content="advancedOptionsLabel">고급</h1>
						</div>
					</div>
					<div class="right-column">
						<div class="collapsible closing" hidden="">
							<button class="advanced-options-settings-button"
								i18n-content="showAdvancedOptions">프린터 옵션 변경...</button>
						</div>
					</div>
				</div>

				<div id="more-settings" class="more-settings collapsible visible"
					aria-hidden="false">
					<div class="more-settings-icon more-settings-icon-plus"></div>
					<a is="action-link" class="more-settings-label" tabindex="0">설정
						더보기</a>
				</div>

			</div>
			<div id="link-container">
				<div>
					<a is="action-link" id="system-dialog-link" class="navbar-link"
						i18n-content="systemDialogOption" tabindex="0">시스템 대화상자를 사용하여
						인쇄... (Ctrl+Shift+P)</a>
					<div id="system-dialog-throbber" hidden="" class="throbber"></div>
				</div>

			</div>
		</div>
	</div>
	<div id="destination-search"
		class="destination-search overlay transparent" hidden="">
		<div class="page">
			<h1 i18n-content="destinationSearchTitle">대상 선택</h1>
			<span class="user-info" hidden=""> <label
				class="account-select-label" for="account-select">해당 목적지 사용자
					표시</label> <select class="account-select" id="account-select"></select>
			</span>
			<div class="close-button"></div>
			<div class="search-box-container">
				<div id="" class="search-box">
					<img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAARCAQAAACRZI9xAAABBElEQVQoFXXBPUsUABwH4P9QZGd4gzQIIc3a4JLVx6hJ0NDp6QPkIrTnoDQ5XFMhDQZCU5OI4MuWm0pCS9DocogEyf0K8bor9Hmq/jBiwVfnzn23aLT+Z8y+iFNtET88qn6G7Iq2dXOmrToR39yvHs/FmVd1yZSfolU9Postd+ovq2Jbo7rsidfVx4w4NlFdtsWb6mNWHHpQXdbErmZdcsuG2DRQXZ7q6HhnyE03NCzp+OVl9bjtg4gjK5Z9EXFiVrN63LOuLSLizLGO+ORh9TPjo0071rww7kDEocf1Lw3DdcG8iDgwWVfT1BIRR0braga1RMSzuo5Bb8V7d+t6BjwxXPUbpgyZUOsKz6kAAAAASUVORK5CYII="
						class="search-box-icon" alt=""> <input type="text"
						class="search-box-input" placeholder="대상 검색">
				</div>
			</div>
			<div class="lists">
				<div class="recent-list">
					<div id="" class="destination-list">
						<header>
						<h4 class="title">최근 대상</h4>
						<a is="action-link" class="action-link" hidden="" tabindex="0"></a>
						<div class="throbber-container" hidden="">
							<div class="throbber"></div>
						</div>
						</header>
						<ul>
							<li id="" class="destination-list-item" tabindex="0"><span
								class="destination-list-item-content"> <img
									class="destination-list-item-icon" alt=""
									src="images/printer.png"> <span
									class="destination-list-item-name" title="HP ePrint">HP
										ePrint</span> <span class="offline-status" hidden=""></span> <span
									class="register-promo" hidden="">
										<button i18n-content="registerPromoButtonText"
											class="register-promo-button">등록</button>
								</span> <span class="extension-controlled-indicator" hidden="">
										<span class="extension-name"></span> <span
										class="extension-icon" role="button" tabindex="0"></span>
								</span>
							</span></li>
						</ul>
						<div class="no-destinations-message"
							i18n-content="noDestinationsMessage" hidden="">목적지를 찾을 수 없음</div>
						<footer hidden="">
						<button class="show-all-button" i18n-content="showAllButtonText">모두
							표시...</button>
						<span class="total"></span> </footer>
					</div>
				</div>
				<div class="local-list">
					<div id="" class="destination-list">
						<header>
						<h4 class="title">로컬 대상</h4>
						<a is="action-link" class="action-link" tabindex="0">관리...</a>
						<div class="throbber-container" hidden="">
							<div class="throbber"></div>
						</div>
						</header>
						<ul>
							<li id="" class="destination-list-item" tabindex="0"><span
								class="destination-list-item-content"> <img
									class="destination-list-item-icon" alt="" src="images/pdf.png">
									<span class="destination-list-item-name" title="PDF로 저장">PDF로
										저장</span> <span class="offline-status" hidden=""></span> <span
									class="register-promo" hidden="">
										<button i18n-content="registerPromoButtonText"
											class="register-promo-button">등록</button>
								</span> <span class="extension-controlled-indicator" hidden="">
										<span class="extension-name"></span> <span
										class="extension-icon" role="button" tabindex="0"></span>
								</span>
							</span></li>
							<li id="" class="destination-list-item" tabindex="0"><span
								class="destination-list-item-content"> <img
									class="destination-list-item-icon" alt=""
									src="images/printer.png"> <span
									class="destination-list-item-name" title="HP ePrint">HP
										ePrint</span> <span class="offline-status" hidden=""></span> <span
									class="register-promo" hidden="">
										<button i18n-content="registerPromoButtonText"
											class="register-promo-button">등록</button>
								</span> <span class="extension-controlled-indicator" hidden="">
										<span class="extension-name"></span> <span
										class="extension-icon" role="button" tabindex="0"></span>
								</span>
							</span></li>
						</ul>
						<div class="no-destinations-message"
							i18n-content="noDestinationsMessage" hidden="">목적지를 찾을 수 없음</div>
						<footer hidden="">
						<button class="show-all-button" i18n-content="showAllButtonText">모두
							표시...</button>
						<span class="total"></span> </footer>
					</div>
				</div>
				<div class="cloud-list" hidden="">
					<div id="" class="destination-list">
						<header>
						<h4 class="title">Google 클라우드 프린트</h4>
						<a is="action-link" class="action-link" tabindex="0">관리...</a>
						<div class="throbber-container" hidden="">
							<div class="throbber"></div>
						</div>
						</header>
						<ul></ul>
						<div class="no-destinations-message"
							i18n-content="noDestinationsMessage">목적지를 찾을 수 없음</div>
						<footer hidden="">
						<button class="show-all-button" i18n-content="showAllButtonText">모두
							표시...</button>
						<span class="total"></span> </footer>
					</div>
				</div>
			</div>
			<div class="action-area">
				<div class="button-strip">
					<button class="cancel-button" i18n-content="cancel">취소</button>
				</div>
			</div>
			<div class="invitation-container gray-bottom-bar" hidden="">
				<div class="invitation-text"></div>
				<div class="invitation-buttons">
					<button class="invitation-accept-button"></button>
					<button class="invitation-reject-button" i18n-content="reject">거부</button>
					<div id="invitation-process-throbber" class="throbber" hidden=""></div>
				</div>
			</div>
			<div class="cloudprint-promo gray-bottom-bar" hidden="">
				<img
					src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAYAAABzenr0AAABjklEQVR4Xu3Wu0oDQRQG4IAgyN6vhewDiCAItpY2VgGx8xm0CthJtLUT7ARBsLKxSGURECuxE9nSJvgYOv4/zIElRveOzRR/sbCZ883kzEkGSql/TS2AARiAAcRxvOq67oXnebnv+0qC5xdk1CsABc51Qcme4zhDYPaDIFASPncOwK7v9U5vbdtOfgFuERCGIRGjzgAofIYoIA6rYAG4i6KIiJ3WgCzLVnTxiYAqIj6A+GoNQOEDAizL2qgDAHqYJEmlfihrvBxRAqp5CjMg2JheG8AU+WwCCMLgnQCNmDT9Cp5wnGAOluoC8Dm5oo8asVsZgPu9huLXKE69ajPpcG3XMcB4Pa9KAex6qB8KE+4ViGkbANckgKfASfonALs+0dfuBse+TFTbsAmx5nOhH7YXAvg9y86J6TjcXEgA5kO+ECANJ8I+gvWPiCDmB4DFdTb7AmBzxzIbFp3AqXQ9EOOy4P1K4W+JzhjHz9vwVkTND55LAviidG6apoySJtKLENoks/l5YP6SGYABGMA3SwujVUnmp10AAAAASUVORK5CYII="
					class="icon" alt="">
				<div class="promo-text">
					Google 문서도구 또는 기타 클라우드 대상으로 인쇄합니다. Google 클라우드 프린트로 인쇄하려면 <a
						is="action-link" class="sign-in" tabindex="0">로그인</a>하세요.
				</div>
				<div class="close-button"></div>
			</div>
		</div>
	</div>

	<div id="advanced-settings"
		class="advanced-settings overlay transparent" hidden="">
		<div class="page">
			<h1 class="advanced-settings-title"></h1>
			<div class="close-button"></div>
			<div class="search-box-area">
				<div id="" class="search-box">
					<img
						src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAARCAQAAACRZI9xAAABBElEQVQoFXXBPUsUABwH4P9QZGd4gzQIIc3a4JLVx6hJ0NDp6QPkIrTnoDQ5XFMhDQZCU5OI4MuWm0pCS9DocogEyf0K8bor9Hmq/jBiwVfnzn23aLT+Z8y+iFNtET88qn6G7Iq2dXOmrToR39yvHs/FmVd1yZSfolU9Postd+ovq2Jbo7rsidfVx4w4NlFdtsWb6mNWHHpQXdbErmZdcsuG2DRQXZ7q6HhnyE03NCzp+OVl9bjtg4gjK5Z9EXFiVrN63LOuLSLizLGO+ORh9TPjo0071rww7kDEocf1Lw3DdcG8iDgwWVfT1BIRR0braga1RMSzuo5Bb8V7d+t6BjwxXPUbpgyZUOsKz6kAAAAASUVORK5CYII="
						class="search-box-icon" alt=""> <input type="text"
						class="search-box-input" placeholder="설정 검색">
				</div>
			</div>
			<div class="no-settings-match-hint"
				i18n-content="noAdvancedSettingsMatchSearchHint" hidden="">일치하는
				항목이 없습니다.</div>
			<div class="settings-area">
				<div class="settings"></div>
			</div>
			<div class="action-area">
				<div class="button-strip">
					<button class="cancel-button" i18n-content="cancel">취소</button>
					<button class="done-button default-button"
						i18n-content="advancedSettingsDialogConfirm">적용</button>
				</div>
			</div>
		</div>
	</div>

	<div id="no-destinations-promo" class="overlay" hidden="">
		<div class="page">
			<div class="close-button"></div>
			<h1 i18n-content="noDestsPromoTitle">프린터 추가</h1>
			<div class="content-area">
				<div i18n-content="noDestsPromoBody">아래의 '프린터 추가' 버튼을 클릭하여
					프린터를 컴퓨터에 추가할 수 있습니다. 추가할 프린터가 없는 경우 PDF 파일을 저장하거나 Google 드라이브에 저장할
					수 있습니다.</div>
			</div>
			<div class="content-area">
				<div i18n-content="noDestsPromoGcpDesc">Google 클라우드 프린트에 프린터를
					추가하면 어디에서든 인쇄할 수 있습니다. 원하는 사용자와 프린터를 공유한 다음 Chrome, 휴대전화, 태블릿, PC
					또는 기타 웹 연결 기기에서 인쇄합니다.</div>
			</div>
			<div class="action-area">
				<div class="hbox stretch">
					<a target="_blank" i18n-content="learnMore"
						i18n-values="href:noDestsPromoLearnMoreUrl"
						href="https://www.google.com/cloudprint/learn/">자세히 알아보기</a>
				</div>
				<div class="action-area-right">
					<div class="button-strip">
						<button class="add-printer-button default-button"
							i18n-content="noDestsPromoAddPrinterButtonLabel">프린터 추가</button>
						<button class="not-now-button"
							i18n-content="noDestsPromoNotNowButtonLabel">나중에</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div id="main-container">
		<div id="preview-area" class="preview-area">
			<div class="preview-area-overlay-layer invisible" aria-hidden="true">
				<div class="preview-area-messages">

					<div class="preview-area-loading-message preview-area-message">
						<span i18n-content="loading">미리보기 로드 중</span> <span
							class="preview-area-loading-message-jumping-dots"><span>.</span><span>.</span><span>.</span></span>
					</div>

					<div class="preview-area-custom-message preview-area-message"
						hidden="">
						<div class="preview-area-custom-message-text"></div>
						<div class="preview-area-custom-action-area">
							<button class="preview-area-open-system-dialog-button"
								i18n-content="launchNativeDialog">시스템 대화상자를 사용하여 인쇄...</button>
							<div
								class="preview-area-open-system-dialog-button-throbber throbber"
								hidden=""></div>
						</div>
					</div>

					<div
						class="preview-area-preview-failed-message preview-area-message"
						i18n-content="previewFailed" hidden="">인쇄 미리보기에 실패했습니다.</div>

					<div class="preview-area-print-failed preview-area-message"
						hidden="">
						<div i18n-content="invalidPrinterSettings">선택한 프린터가 사용할 수
							없거나 올바르게 설치되어 있지 않습니다. 프린터를 확인하거나 다른 프린터를 선택해 보세요.</div>
						<div class="preview-area-print-failed-action-area">
							<button class="preview-area-open-system-dialog-button"
								i18n-content="launchNativeDialog">시스템 대화상자를 사용하여 인쇄...</button>
							<div
								class="preview-area-open-system-dialog-button-throbber throbber"
								hidden=""></div>
						</div>
					</div>

				</div>
			</div>
			<div class="preview-area-plugin-wrapper" aria-hidden="false">


				<iframe
					src="chrome-extension://mhjfbmdgcfjbbpaeojofohoefgiehjai/index.html?chrome://print/2/0/print.pdf"
					tabindex="-1" class="preview-area-plugin" aria-live="polite"
					aria-atomic="true" id="pdf-viewer"></iframe>
			</div>
			<div id="" class="margin-control invisible margin-control-top"
				aria-hidden="false"
				style="left: 3px; top: 13px; width: 433px; clip: rect(-13px, 435px, 565px, -3px);">
				<div class="margin-control-line"></div>
				<input class="margin-control-textbox" aria-hidden="true" type="text"
					aria-label="상단 여백">
			</div>
			<div id="" class="margin-control invisible margin-control-right"
				aria-hidden="false"
				style="left: 407px; top: 2px; height: 560px; clip: rect(-2px, 31px, 576px, -407px);">
				<div class="margin-control-line"></div>
				<input class="margin-control-textbox" aria-hidden="true" type="text"
					aria-label="오른쪽 여백">
			</div>
			<div id="" class="margin-control invisible margin-control-bottom"
				aria-hidden="false"
				style="left: 3px; top: 533px; width: 433px; clip: rect(-533px, 435px, 45px, -3px);">
				<div class="margin-control-line"></div>
				<input class="margin-control-textbox" aria-hidden="true" type="text"
					aria-label="하단 여백">
			</div>
			<div id="" class="margin-control invisible margin-control-left"
				aria-hidden="false"
				style="left: 14px; top: 2px; height: 560px; clip: rect(-2px, 424px, 576px, -14px);">
				<div class="margin-control-line"></div>
				<input class="margin-control-textbox" aria-hidden="true" type="text"
					aria-label="왼쪽 여백">
			</div>
		</div>

	</div>

	<!-- HTML Templates -->
	<div id="advanced-settings-item-template"
		class="advanced-settings-item" hidden="">
		<label class="advanced-settings-item-label"></label> <span
			class="advanced-settings-item-value"> <span
			class="advanced-settings-item-value-select" hidden=""> <select
				class="advanced-settings-item-value-select-control">
			</select>
		</span> <span class="advanced-settings-item-value-text" hidden=""> <input
				type="text" class="advanced-settings-item-value-text-control">

		</span>
		</span>
	</div>

	<div id="search-box-template" class="search-box" hidden="">
		<img
			src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABEAAAARCAQAAACRZI9xAAABBElEQVQoFXXBPUsUABwH4P9QZGd4gzQIIc3a4JLVx6hJ0NDp6QPkIrTnoDQ5XFMhDQZCU5OI4MuWm0pCS9DocogEyf0K8bor9Hmq/jBiwVfnzn23aLT+Z8y+iFNtET88qn6G7Iq2dXOmrToR39yvHs/FmVd1yZSfolU9Postd+ovq2Jbo7rsidfVx4w4NlFdtsWb6mNWHHpQXdbErmZdcsuG2DRQXZ7q6HhnyE03NCzp+OVl9bjtg4gjK5Z9EXFiVrN63LOuLSLizLGO+ORh9TPjo0071rww7kDEocf1Lw3DdcG8iDgwWVfT1BIRR0braga1RMSzuo5Bb8V7d+t6BjwxXPUbpgyZUOsKz6kAAAAASUVORK5CYII="
			class="search-box-icon" alt=""> <input type="text"
			class="search-box-input">
	</div>

	<div id="margin-control-template" class="margin-control invisible"
		hidden="">
		<div class="margin-control-line"></div>
		<input class="margin-control-textbox" aria-hidden="true" type="text">
	</div>

	<div id="destination-list-template" class="destination-list" hidden="">
		<header>
		<h4 class="title"></h4>
		<a is="action-link" class="action-link" hidden="" tabindex="0"></a>
		<div class="throbber-container">
			<div class="throbber"></div>
		</div>
		</header>
		<ul></ul>
		<div class="no-destinations-message"
			i18n-content="noDestinationsMessage">목적지를 찾을 수 없음</div>
		<footer hidden="">
		<button class="show-all-button" i18n-content="showAllButtonText">모두
			표시...</button>
		<span class="total"></span> </footer>
	</div>

	<li id="destination-list-item-template" class="destination-list-item"
		hidden="" tabindex="0"><span
		class="destination-list-item-content"> <img
			class="destination-list-item-icon" alt=""> <span
			class="destination-list-item-name"></span> <span
			class="offline-status" hidden=""></span> <span class="register-promo"
			hidden="">
				<button i18n-content="registerPromoButtonText"
					class="register-promo-button">등록</button>
		</span> <span class="extension-controlled-indicator" hidden=""> <span
				class="extension-name"></span> <span class="extension-icon"
				role="button" tabindex="0"></span>
		</span>
	</span></li>

	<div id="fedex-tos-template" class="fedex-tos" aria-hidden="false"
		aria-live="polite" hidden="" style="height: 0;">
		<div class="height-helper">
			<div class="tos-text"></div>
			<div class="agreement-box">
				<label> <input class="agree-checkbox" type="checkbox">
					<span i18n-content="tosCheckboxLabel">동의함</span>
				</label>
			</div>
		</div>
	</div>


	<script src="chrome://resources/js/i18n_template2.js"></script>



</body>
</html>