
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/speech/SpeechSynthesisUtterance.idl

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


package randori.webkit.modules.speech
{


[JavaScript(export="false", nativecondition="SPEECH_SYNTHESIS", name="SpeechSynthesisUtterance")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class SpeechSynthesisUtterance
{
	/**
	*  Creates a new <code>SpeechSynthesisUtterance</code> instance.
	*  @param text (optional argument, default value is <code>undefined</code>)
	*/
	public function SpeechSynthesisUtterance(text:String=undefined) {super();}

	public function get text():String { return undefined; }
	public function set text(value:String):void { }

	public function get lang():String { return undefined; }
	public function set lang(value:String):void { }

	/**
	*  @see randori.webkit.modules.speech.SpeechSynthesisVoice
	*/
	public function get voice():SpeechSynthesisVoice { return undefined; }
	public function set voice(value:SpeechSynthesisVoice):void { }

	public function get volume():Number { return undefined; }
	public function set volume(value:Number):void { }

	public function get rate():Number { return undefined; }
	public function set rate(value:Number):void { }

	public function get pitch():Number { return undefined; }
	public function set pitch(value:Number):void { }

	/**
	*  Function that accepts an event of type <code>StartEvent</code>.
	*/
	public function get onstart():Function { return undefined; }
	public function set onstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>EndEvent</code>.
	*/
	public function get onend():Function { return undefined; }
	public function set onend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return undefined; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PauseEvent</code>.
	*/
	public function get onpause():Function { return undefined; }
	public function set onpause(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ResumeEvent</code>.
	*/
	public function get onresume():Function { return undefined; }
	public function set onresume(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MarkEvent</code>.
	*/
	public function get onmark():Function { return undefined; }
	public function set onmark(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>BoundaryEvent</code>.
	*/
	public function get onboundary():Function { return undefined; }
	public function set onboundary(value:Function):void { }
}

}