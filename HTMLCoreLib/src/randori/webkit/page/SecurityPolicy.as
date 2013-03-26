
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/page/DOMSecurityPolicy.idl

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


package randori.webkit.page
{

import randori.webkit.dom.DOMStringList;

[JavaScript(export="false", nativecondition="CSP_NEXT", name="SecurityPolicy")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class SecurityPolicy
{

	public function get allowsEval():Boolean { return false; }

	public function get allowsInlineScript():Boolean { return false; }

	public function get allowsInlineStyle():Boolean { return false; }

	public function get isActive():Boolean { return false; }

	/**
	*  @see randori.webkit.dom.DOMStringList
	*/
	public function get reportURIs():DOMStringList { return null; }
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsConnectionTo(url:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsFontFrom(url:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsFormAction(url:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsFrameFrom(url:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsImageFrom(url:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsMediaFrom(url:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsObjectFrom(url:String):Boolean { return false;}
	/**
	*  @param type
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsPluginType(type:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsScriptFrom(url:String):Boolean { return false;}
	/**
	*  @param url
	*  @return A <code>Boolean</code> instance.
	*/
	public function allowsStyleFrom(url:String):Boolean { return false;}
}

}