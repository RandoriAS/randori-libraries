
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/inspector/InjectedScriptHost.idl

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

import randori.webkit.dom.Node;

[JavaScript(export="false", nativecondition="INSPECTOR", name="InjectedScriptHost")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class InjectedScriptHost
{
	public function clearConsoleMessages():void {}
	/**
	*  @param text
	*/
	public function copyText(text:String):void {}
	/**
	*  @param objectId
	*  @param hints
	*/
	public function inspect(objectId:*, hints:*):void {}
	/**
	*  @param num
	*  @return A <code>any</code> instance.
	*/
	public function inspectedObject(num:int):* { return null;}
	/**
	*  @param object
	*  @return A <code>any</code> instance.
	*/
	public function internalConstructorName(object:*):* { return null;}
	/**
	*  @param object
	*  @return A <code>Boolean</code> instance.
	*/
	public function isHTMLAllCollection(object:*):Boolean { return false;}
	/**
	*  @param object
	*  @return A <code>String</code> instance.
	*/
	public function type(object:*):String { return '';}
	/**
	*  @param object
	*  @return A <code>any</code> instance.
	*/
	public function functionDetails(object:*):* { return null;}
	/**
	*  @param object
	*  @return A <code>Array</code> instance.
	*/
	public function getInternalProperties(object:*):Array { return null;}
	/**
	*  @param node
	*  @return A <code>Array</code> instance.
	*/
	public function getEventListeners(node:Node):Array { return null;}
	/**
	*  @param database
	*  @return A <code>String</code> instance.
	*/
	public function databaseId(database:*):String { return '';}
	/**
	*  @param storage
	*  @return A <code>String</code> instance.
	*/
	public function storageId(storage:*):String { return '';}
	/**
	*  @param text
	*  @return A <code>any</code> instance.
	*/
	public function evaluate(text:String):* { return null;}
	/**
	*  @param functionObject
	*  @param scopeIndex
	*  @param variableName
	*  @param newValue
	*  @return A <code>any</code> instance.
	*/
	public function setFunctionVariableValue(functionObject:*, scopeIndex:int, variableName:String, newValue:*):* { return null;}
}

}