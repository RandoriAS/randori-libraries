
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/inspector/JavaScriptCallFrame.idl

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


[JavaScript(export="false", nativecondition="JAVASCRIPT_DEBUGGER", name="JavaScriptCallFrame")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class JavaScriptCallFrame
{
	public static const GLOBAL_SCOPE:uint = 0;
	public static const LOCAL_SCOPE:uint = 1;
	public static const WITH_SCOPE:uint = 2;
	public static const CLOSURE_SCOPE:uint = 3;
	public static const CATCH_SCOPE:uint = 4;
	/**
	*  @param script
	*/
	public function evaluate(script:String):void {}
	/**
	*  @return A <code>any</code> instance.
	*/
	public function restart():* { return null;}
	/**
	*  @param scopeIndex
	*  @param variableName
	*  @param newValue
	*  @return A <code>any</code> instance.
	*/
	public function setVariableValue(scopeIndex:int, variableName:String, newValue:*):* { return null;}

	/**
	*  @see randori.webkit.inspector.JavaScriptCallFrame
	*/
	public function get caller():JavaScriptCallFrame { return null; }

	public function get sourceID():uint { return 0; }

	public function get line():uint { return 0; }

	public function get column():uint { return 0; }

	public function get scopeChain():Array { return null; }
	/**
	*  @param scopeIndex
	*  @return A <code>uint</code> instance.
	*/
	public function scopeType(scopeIndex:int):uint { return 0;}

	public function get thisObject():Object { return null; }

	public function get functionName():String { return ''; }

	public function get type():String { return ''; }
}

}