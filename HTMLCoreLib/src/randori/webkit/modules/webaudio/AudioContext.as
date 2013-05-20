
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/Modules/webaudio/AudioContext.idl

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


package randori.webkit.modules.webaudio
{

import randori.webkit.html.canvas.ArrayBuffer;

[JavaScript(export="false", nativecondition="WEB_AUDIO", name="AudioContext")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class AudioContext
{

	/**
	*  @see randori.webkit.modules.webaudio.AudioDestinationNode
	*/
	public function get destination():AudioDestinationNode { return undefined; }

	public function get currentTime():Number { return undefined; }

	public function get sampleRate():Number { return undefined; }

	/**
	*  @see randori.webkit.modules.webaudio.AudioListener
	*/
	public function get listener():AudioListener { return undefined; }

	public function get activeSourceCount():uint { return undefined; }
	[JavaScriptMethod(name="createBuffer")]
	/**
	*  @param numberOfChannels
	*  @param numberOfFrames
	*  @param sampleRate
	*  @return A <code>AudioBuffer</code> instance.
	*/
	public function createBuffer1(numberOfChannels:uint, numberOfFrames:uint, sampleRate:Number):AudioBuffer { return undefined;}
	[JavaScriptMethod(name="createBuffer")]
	/**
	*  @param buffer
	*  @param mixToMono
	*  @return A <code>AudioBuffer</code> instance.
	*/
	public function createBuffer2(buffer:ArrayBuffer, mixToMono:Boolean):AudioBuffer { return undefined;}
	/**
	*  @param audioData
	*  @param successCallback (optional argument, default value is <code>undefined</code>)
	*  @param errorCallback (optional argument, default value is <code>undefined</code>)
	*/
	public function decodeAudioData(audioData:ArrayBuffer, successCallback:Object=undefined, errorCallback:Object=undefined):void {}
	/**
	*  @return A <code>AudioBufferSourceNode</code> instance.
	*/
	public function createBufferSource():AudioBufferSourceNode { return undefined;}
	/**
	*  @return A <code>GainNode</code> instance.
	*/
	public function createGain():GainNode { return undefined;}
	/**
	*  @param maxDelayTime (optional argument, default value is <code>undefined</code>)
	*  @return A <code>DelayNode</code> instance.
	*/
	public function createDelay(maxDelayTime:Number=undefined):DelayNode { return undefined;}
	/**
	*  @return A <code>BiquadFilterNode</code> instance.
	*/
	public function createBiquadFilter():BiquadFilterNode { return undefined;}
	/**
	*  @return A <code>WaveShaperNode</code> instance.
	*/
	public function createWaveShaper():WaveShaperNode { return undefined;}
	/**
	*  @return A <code>PannerNode</code> instance.
	*/
	public function createPanner():PannerNode { return undefined;}
	/**
	*  @return A <code>ConvolverNode</code> instance.
	*/
	public function createConvolver():ConvolverNode { return undefined;}
	/**
	*  @return A <code>DynamicsCompressorNode</code> instance.
	*/
	public function createDynamicsCompressor():DynamicsCompressorNode { return undefined;}
	/**
	*  @return A <code>AnalyserNode</code> instance.
	*/
	public function createAnalyser():AnalyserNode { return undefined;}
	/**
	*  @param bufferSize
	*  @param numberOfInputChannels (optional argument, default value is <code>undefined</code>)
	*  @param numberOfOutputChannels (optional argument, default value is <code>undefined</code>)
	*  @return A <code>ScriptProcessorNode</code> instance.
	*/
	public function createScriptProcessor(bufferSize:uint, numberOfInputChannels:uint=undefined, numberOfOutputChannels:uint=undefined):ScriptProcessorNode { return undefined;}
	/**
	*  @return A <code>OscillatorNode</code> instance.
	*/
	public function createOscillator():OscillatorNode { return undefined;}
	/**
	*  @param real
	*  @param imag
	*  @return A <code>WaveTable</code> instance.
	*/
	public function createWaveTable(real:Object, imag:Object):WaveTable { return undefined;}
	/**
	*  @param numberOfOutputs (optional argument, default value is <code>undefined</code>)
	*  @return A <code>ChannelSplitterNode</code> instance.
	*/
	public function createChannelSplitter(numberOfOutputs:uint=undefined):ChannelSplitterNode { return undefined;}
	/**
	*  @param numberOfInputs (optional argument, default value is <code>undefined</code>)
	*  @return A <code>ChannelMergerNode</code> instance.
	*/
	public function createChannelMerger(numberOfInputs:uint=undefined):ChannelMergerNode { return undefined;}

	/**
	*  Function that accepts an event of type <code>CompleteEvent</code>.
	*/
	public function get oncomplete():Function { return undefined; }
	public function set oncomplete(value:Function):void { }
	public function startRendering():void {}
}

}