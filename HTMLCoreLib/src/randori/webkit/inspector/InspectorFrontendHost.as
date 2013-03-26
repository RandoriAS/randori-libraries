
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/inspector/InspectorFrontendHost.idl

  PLEASE DO *NOT* MODIFY THIS FILE! This file will be overridden next generation. If you need changes:
  - Regenerate the project with the newest IDL files.
  - or modify the WebIDLParser tool itself.

********************************************************************************************************

  Copyright (C) 2013 Sebastian Loncar, Web: http://loncar.de
  Copyright (C) 2009 Apple Inc. All Rights Reserved.

  Adapted to create Actionscript 3 classes by Roland Zwaga (roland@stackandheap.com) for the Randori
  framework for large enterprise Javascript applications.

  MIT License:

  Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
  associated documentation files (the "Software"), to deal in the Software without restriction, 
  including without limitation the rights to use, copy, modify, merge, publish, distribute,
  sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
  furnished to do so, subject to the following conditions:

  The above copyright notice and this permission notice shall be included in all copies or substantial
  portions of the Software.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
  NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
  OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
  CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

*******************************************************************************************************/


package randori.webkit.inspector
{

import randori.webkit.dom.MouseEvent;
import randori.webkit.modules.filesystem.DOMFileSystem;

[JavaScript(export="false", nativecondition="INSPECTOR", name="InspectorFrontendHost")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class InspectorFrontendHost
{
	public function loaded():void {}
	public function closeWindow():void {}
	public function bringToFront():void {}
	/**
	*  @param zoom
	*/
	public function setZoomFactor(zoom:Number):void {}
	/**
	*  @param newURL
	*/
	public function inspectedURLChanged(newURL:String):void {}
	/**
	*  @param side
	*/
	public function requestSetDockSide(side:String):void {}
	/**
	*  @param height
	*/
	public function setAttachedWindowHeight(height:uint):void {}
	/**
	*  @param x
	*  @param y
	*/
	public function moveWindowBy(x:Number, y:Number):void {}
	/**
	*  @param origin
	*  @param script
	*/
	public function setInjectedScriptForOrigin(origin:String, script:String):void {}
	/**
	*  @return A <code>String</code> instance.
	*/
	public function localizedStringsURL():String { return '';}
	/**
	*  @return A <code>String</code> instance.
	*/
	public function hiddenPanels():String { return '';}
	/**
	*  @param text
	*/
	public function copyText(text:String):void {}
	/**
	*  @param url
	*/
	public function openInNewTab(url:String):void {}
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function canSave():Boolean { return false;}
	/**
	*  @param url
	*  @param content
	*  @param forceSaveAs
	*/
	public function save(url:String, content:String, forceSaveAs:Boolean):void {}
	/**
	*  @param url
	*  @param content
	*/
	public function append(url:String, content:String):void {}
	/**
	*  @param url
	*/
	public function close(url:String):void {}
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function canInspectWorkers():Boolean { return false;}
	/**
	*  @return A <code>String</code> instance.
	*/
	public function platform():String { return '';}
	/**
	*  @return A <code>String</code> instance.
	*/
	public function port():String { return '';}
	/**
	*  @param event
	*  @param items
	*/
	public function showContextMenu(event:MouseEvent, items:*):void {}
	/**
	*  @param message
	*/
	public function sendMessageToBackend(message:String):void {}
	/**
	*  @param actionCode
	*/
	public function recordActionTaken(actionCode:uint):void {}
	/**
	*  @param panelCode
	*/
	public function recordPanelShown(panelCode:uint):void {}
	/**
	*  @param settingChanged
	*/
	public function recordSettingChanged(settingChanged:uint):void {}
	/**
	*  @param url
	*  @return A <code>String</code> instance.
	*/
	public function loadResourceSynchronously(url:String):String { return '';}
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function supportsFileSystems():Boolean { return false;}
	public function requestFileSystems():void {}
	public function addFileSystem():void {}
	/**
	*  @param fileSystemPath
	*/
	public function removeFileSystem(fileSystemPath:String):void {}
	/**
	*  @param fileSystemId
	*  @param registeredName
	*  @return A <code>DOMFileSystem</code> instance.
	*/
	public function isolatedFileSystem(fileSystemId:String, registeredName:String):DOMFileSystem { return null;}
	/**
	*  @return A <code>Boolean</code> instance.
	*/
	public function isUnderTest():Boolean { return false;}
}

}