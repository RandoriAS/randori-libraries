
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/speech/SpeechRecognition.idl

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

import randori.webkit.dom.DomEvent;

[JavaScript(export="false", nativecondition="SCRIPTED_SPEECH", name="SpeechRecognition")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class SpeechRecognition
{
	/**
	*  Creates a new <code>SpeechRecognition</code> instance.
	*/
	public function SpeechRecognition() {super();}

	/**
	*  @see randori.webkit.modules.speech.SpeechGrammarList
	*/
	public function get grammars():SpeechGrammarList { return null; }
	public function set grammars(value:SpeechGrammarList):void { }

	public function get lang():String { return ''; }
	public function set lang(value:String):void { }

	public function get continuous():Boolean { return false; }
	public function set continuous(value:Boolean):void { }

	public function get interimResults():Boolean { return false; }
	public function set interimResults(value:Boolean):void { }

	public function get maxAlternatives():uint { return 0; }
	public function set maxAlternatives(value:uint):void { }
	public function start():void {}
	public function stop():void {}
	public function abort():void {}

	/**
	*  Function that accepts an event of type <code>AudiostartEvent</code>.
	*/
	public function get onaudiostart():Function { return null; }
	public function set onaudiostart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SoundstartEvent</code>.
	*/
	public function get onsoundstart():Function { return null; }
	public function set onsoundstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SpeechstartEvent</code>.
	*/
	public function get onspeechstart():Function { return null; }
	public function set onspeechstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SpeechendEvent</code>.
	*/
	public function get onspeechend():Function { return null; }
	public function set onspeechend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SoundendEvent</code>.
	*/
	public function get onsoundend():Function { return null; }
	public function set onsoundend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>AudioendEvent</code>.
	*/
	public function get onaudioend():Function { return null; }
	public function set onaudioend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ResultEvent</code>.
	*/
	public function get onresult():Function { return null; }
	public function set onresult(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>NomatchEvent</code>.
	*/
	public function get onnomatch():Function { return null; }
	public function set onnomatch(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public function get onerror():Function { return null; }
	public function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>StartEvent</code>.
	*/
	public function get onstart():Function { return null; }
	public function set onstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>EndEvent</code>.
	*/
	public function get onend():Function { return null; }
	public function set onend(value:Function):void { }
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param evt
	*  @return A <code>Boolean</code> instance.
	*/
	public function dispatchEvent(evt:DomEvent):Boolean { return false;}
}

}