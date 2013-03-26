
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/storage/StorageEvent.idl

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


package randori.webkit.storage
{

import randori.webkit.dom.DomEvent;

[JavaScript(export="false", name="StorageEvent")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.dom.DomEvent
 */
public class StorageEvent extends DomEvent
{

	public function get key():String { return ''; }

	public function get oldValue():String { return ''; }

	public function get newValue():String { return ''; }

	public function get url():String { return ''; }

	/**
	*  @see randori.webkit.storage.Storage
	*/
	public function get storageArea():Storage { return null; }
	/**
	*  @param typeArg (optional argument, default value is <code>undefined</code>)
	*  @param canBubbleArg (optional argument, default value is <code>undefined</code>)
	*  @param cancelableArg (optional argument, default value is <code>undefined</code>)
	*  @param keyArg (optional argument, default value is <code>undefined</code>)
	*  @param oldValueArg (optional argument, default value is <code>undefined</code>)
	*  @param newValueArg (optional argument, default value is <code>undefined</code>)
	*  @param urlArg (optional argument, default value is <code>undefined</code>)
	*  @param storageAreaArg (optional argument, default value is <code>undefined</code>)
	*/
	public function initStorageEvent(typeArg:String=undefined, canBubbleArg:Boolean=undefined, cancelableArg:Boolean=undefined, keyArg:String=undefined, oldValueArg:String=undefined, newValueArg:String=undefined, urlArg:String=undefined, storageAreaArg:Storage=undefined):void {}
}

}