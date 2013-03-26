
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/page/DOMWindow.idl

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

import randori.webkit.dom.DomEvent;
import randori.webkit.dom.Element;
import randori.webkit.dom.Document;
import randori.webkit.css.MediaQueryList;
import randori.webkit.css.StyleMedia;
import randori.webkit.css.CSSStyleDeclaration;
import randori.webkit.css.CSSRuleList;
import randori.webkit.loader.appcache.DOMApplicationCache;
import randori.webkit.storage.Storage;
import randori.webkit.css.CSS;
import randori.webkit.css.StyleSheet;
import randori.webkit.css.CSSStyleSheet;
import randori.webkit.css.CSSValue;
import randori.webkit.css.CSSPrimitiveValue;
import randori.webkit.css.CSSValueList;
import randori.webkit.css.CSSRule;
import randori.webkit.css.CSSCharsetRule;
import randori.webkit.css.CSSFontFaceRule;
import randori.webkit.css.CSSImportRule;
import randori.webkit.css.CSSMediaRule;
import randori.webkit.css.CSSPageRule;
import randori.webkit.css.CSSStyleRule;
import randori.webkit.css.MediaList;
import randori.webkit.css.Counter;
import randori.webkit.css.Rect;
import randori.webkit.css.RGBColor;
import randori.webkit.css.StyleSheetList;
import randori.webkit.dom.DOMStringList;
import randori.webkit.dom.DOMImplementation;
import randori.webkit.html.DOMSettableTokenList;
import randori.webkit.html.DOMTokenList;
import randori.webkit.dom.DocumentFragment;
import randori.webkit.dom.Node;
import randori.webkit.dom.NodeList;
import randori.webkit.dom.PropertyNodeList;
import randori.webkit.dom.NamedNodeMap;
import randori.webkit.dom.CharacterData;
import randori.webkit.dom.Attr;
import randori.webkit.dom.Text;
import randori.webkit.dom.Comment;
import randori.webkit.dom.CDATASection;
import randori.webkit.dom.DocumentType;
import randori.webkit.dom.Notation;
import randori.webkit.dom.Entity;
import randori.webkit.dom.EntityReference;
import randori.webkit.html.canvas.DOMPath;
import randori.webkit.dom.ProcessingInstruction;
import randori.webkit.html.shadow.HTMLContentElement;
import randori.webkit.html.shadow.HTMLShadowElement;
import randori.webkit.html.HTMLDocument;
import randori.webkit.html.HTMLElement;
import randori.webkit.html.HTMLAnchorElement;
import randori.webkit.html.HTMLAppletElement;
import randori.webkit.html.HTMLAreaElement;
import randori.webkit.html.HTMLBRElement;
import randori.webkit.html.HTMLBaseElement;
import randori.webkit.html.HTMLBaseFontElement;
import randori.webkit.html.HTMLBodyElement;
import randori.webkit.html.HTMLButtonElement;
import randori.webkit.html.HTMLCanvasElement;
import randori.webkit.html.HTMLDListElement;
import randori.webkit.html.HTMLDataListElement;
import randori.webkit.html.HTMLDialogElement;
import randori.webkit.html.HTMLDirectoryElement;
import randori.webkit.html.HTMLDivElement;
import randori.webkit.html.HTMLEmbedElement;
import randori.webkit.html.HTMLFieldSetElement;
import randori.webkit.html.HTMLFontElement;
import randori.webkit.html.HTMLFormElement;
import randori.webkit.html.HTMLFrameElement;
import randori.webkit.html.HTMLFrameSetElement;
import randori.webkit.html.HTMLHRElement;
import randori.webkit.html.HTMLHeadElement;
import randori.webkit.html.HTMLHeadingElement;
import randori.webkit.html.HTMLHtmlElement;
import randori.webkit.html.HTMLIFrameElement;
import randori.webkit.html.HTMLImageElement;
import randori.webkit.html.HTMLInputElement;
import randori.webkit.html.HTMLKeygenElement;
import randori.webkit.html.HTMLLIElement;
import randori.webkit.html.HTMLLabelElement;
import randori.webkit.html.HTMLLegendElement;
import randori.webkit.html.HTMLLinkElement;
import randori.webkit.html.HTMLMapElement;
import randori.webkit.html.HTMLMarqueeElement;
import randori.webkit.html.HTMLMenuElement;
import randori.webkit.html.HTMLMetaElement;
import randori.webkit.html.HTMLModElement;
import randori.webkit.html.HTMLOListElement;
import randori.webkit.html.HTMLObjectElement;
import randori.webkit.html.HTMLOptGroupElement;
import randori.webkit.html.HTMLOptionElement;
import randori.webkit.html.HTMLOutputElement;
import randori.webkit.html.HTMLParagraphElement;
import randori.webkit.html.HTMLParamElement;
import randori.webkit.html.HTMLPreElement;
import randori.webkit.html.HTMLQuoteElement;
import randori.webkit.html.HTMLScriptElement;
import randori.webkit.html.HTMLSelectElement;
import randori.webkit.html.HTMLSpanElement;
import randori.webkit.html.HTMLStyleElement;
import randori.webkit.html.HTMLTableCaptionElement;
import randori.webkit.html.HTMLTableCellElement;
import randori.webkit.html.HTMLTableColElement;
import randori.webkit.html.HTMLTableElement;
import randori.webkit.html.HTMLTableRowElement;
import randori.webkit.html.HTMLTableSectionElement;
import randori.webkit.html.HTMLTemplateElement;
import randori.webkit.html.HTMLTextAreaElement;
import randori.webkit.html.HTMLTitleElement;
import randori.webkit.html.HTMLUListElement;
import randori.webkit.html.HTMLCollection;
import randori.webkit.html.HTMLAllCollection;
import randori.webkit.html.HTMLFormControlsCollection;
import randori.webkit.html.HTMLOptionsCollection;
import randori.webkit.html.HTMLPropertiesCollection;
import randori.webkit.html.HTMLUnknownElement;
import randori.webkit.html.MediaKeyEvent;
import randori.webkit.modules.encryptedmedia.MediaKeys;
import randori.webkit.html.MediaKeyError;
import randori.webkit.modules.encryptedmedia.MediaKeyMessageEvent;
import randori.webkit.modules.encryptedmedia.MediaKeyNeededEvent;
import randori.webkit.html.HTMLTrackElement;
import randori.webkit.html.track.TextTrack;
import randori.webkit.html.track.TextTrackCue;
import randori.webkit.html.track.TextTrackCueList;
import randori.webkit.html.track.TextTrackList;
import randori.webkit.html.track.TextTrackRegion;
import randori.webkit.html.track.TrackEvent;
import randori.webkit.html.HTMLAudioElement;
import randori.webkit.html.HTMLMediaElement;
import randori.webkit.html.HTMLVideoElement;
import randori.webkit.html.MediaError;
import randori.webkit.html.TimeRanges;
import randori.webkit.html.HTMLSourceElement;
import randori.webkit.html.MediaController;
import randori.webkit.html.canvas.CanvasPattern;
import randori.webkit.html.canvas.CanvasGradient;
import randori.webkit.html.canvas.CanvasRenderingContext2D;
import randori.webkit.html.ImageData;
import randori.webkit.html.TextMetrics;
import randori.webkit.html.canvas.WebGLActiveInfo;
import randori.webkit.html.canvas.WebGLBuffer;
import randori.webkit.html.canvas.WebGLFramebuffer;
import randori.webkit.html.canvas.WebGLProgram;
import randori.webkit.html.canvas.WebGLRenderbuffer;
import randori.webkit.html.canvas.WebGLRenderingContext;
import randori.webkit.html.canvas.WebGLShader;
import randori.webkit.html.canvas.WebGLShaderPrecisionFormat;
import randori.webkit.html.canvas.WebGLTexture;
import randori.webkit.html.canvas.WebGLUniformLocation;
import randori.webkit.dom.DOMStringMap;
import randori.webkit.html.canvas.ArrayBuffer;
import randori.webkit.html.canvas.ArrayBufferView;
import randori.webkit.html.canvas.DataView;
import randori.webkit.dom.BeforeLoadEvent;
import randori.webkit.dom.CompositionEvent;
import randori.webkit.dom.CustomEvent;
import randori.webkit.dom.ErrorEvent;
import randori.webkit.dom.FocusEvent;
import randori.webkit.dom.HashChangeEvent;
import randori.webkit.dom.KeyboardEvent;
import randori.webkit.dom.MessageEvent;
import randori.webkit.dom.MouseEvent;
import randori.webkit.dom.MutationEvent;
import randori.webkit.dom.OverflowEvent;
import randori.webkit.dom.PopStateEvent;
import randori.webkit.dom.PageTransitionEvent;
import randori.webkit.dom.ProgressEvent;
import randori.webkit.dom.TextEvent;
import randori.webkit.dom.TransitionEvent;
import randori.webkit.dom.UIEvent;
import randori.webkit.dom.WheelEvent;
import randori.webkit.xml.XMLHttpRequestProgressEvent;
import randori.webkit.dom.DeviceMotionEvent;
import randori.webkit.dom.DeviceOrientationEvent;
import randori.webkit.dom.Touch;
import randori.webkit.dom.TouchEvent;
import randori.webkit.dom.TouchList;
import randori.webkit.storage.StorageEvent;
import randori.webkit.html.canvas.WebGLContextEvent;
import randori.webkit.modules.proximity.DeviceProximityEvent;
import randori.webkit.dom.AutocompleteErrorEvent;
import randori.webkit.dom.Clipboard;
import randori.webkit.workers.Worker;
import randori.webkit.workers.SharedWorker;
import randori.webkit.fileapi.File;
import randori.webkit.fileapi.FileList;
import randori.webkit.fileapi.Blob;
import randori.webkit.dom.NodeFilter;
import randori.webkit.dom.Range;
import randori.webkit.xml.DOMParser;
import randori.webkit.xml.XMLSerializer;
import randori.webkit.xml.XMLHttpRequest;
import randori.webkit.xml.XMLHttpRequestUpload;
import randori.webkit.xml.XSLTProcessor;
import randori.webkit.plugins.Plugin;
import randori.webkit.plugins.MimeType;
import randori.webkit.dom.ClientRect;
import randori.webkit.dom.ClientRectList;
import randori.webkit.xml.XPathEvaluator;
import randori.webkit.xml.XPathResult;
import randori.webkit.svg.SVGZoomEvent;
import randori.webkit.html.FormData;
import randori.webkit.fileapi.FileError;
import randori.webkit.fileapi.FileReader;
import randori.webkit.html.URL;
import randori.webkit.dom.MutationObserver;

[JavaScript(mode="global", export="false", name="Window")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 */
public class Window
{

	/**
	*  @see randori.webkit.page.Screen
	*/
	public static function get screen():Screen { return null; }

	/**
	*  @see randori.webkit.page.History
	*/
	public static function get history():History { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public static function get locationbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public static function get menubar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public static function get personalbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public static function get scrollbars():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public static function get statusbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.BarInfo
	*/
	public static function get toolbar():BarInfo { return null; }

	/**
	*  @see randori.webkit.page.Navigator
	*/
	public static function get navigator():Navigator { return null; }

	/**
	*  @see randori.webkit.page.Navigator
	*/
	public static function get clientInformation():Navigator { return null; }

	/**
	*  @see randori.webkit.page.Crypto
	*/
	public static function get crypto():Crypto { return null; }

	/**
	*  @see randori.webkit.page.Location
	*/
	public static function get location():Location { return null; }
	public static function set location(value:Location):void { }

    [JavaScriptProperty(name="location")]
    public static function set locationString(value:String):void { }


    /**
	*  @see randori.webkit.dom.DomEvent
	*/
	public static function get event():DomEvent { return null; }
	/**
	*  @return A <code>Selection</code> instance.
	*/
	public static function getSelection():Selection { return null;}

	/**
	*  @see randori.webkit.dom.Element
	*/
	public static function get frameElement():Element { return null; }
	public static function focus():void {}
	public static function blur():void {}
	public static function close():void {}
	public static function print():void {}
	public static function stop():void {}
	/**
	*  @param url
	*  @param name
	*  @param options (optional argument, default value is <code>''</code>)
	*  @return A <code>Window</code> instance.
	*/
	public static function open(url:String, name:String, options:String=''):Window { return null;}
	/**
	*  @param url
	*  @param dialogArgs (optional argument, default value is <code>null</code>)
	*  @param featureArgs (optional argument, default value is <code>''</code>)
	*  @return A <code>any</code> instance.
	*/
	public static function showModalDialog(url:String, dialogArgs:*=null, featureArgs:String=''):* { return null;}
	/**
	*  @param message (optional argument, default value is <code>undefined</code>)
	*/
	public static function alert(message:String=undefined):void {}
	/**
	*  @param message (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public static function confirm(message:String=undefined):Boolean { return false;}
	/**
	*  @param message (optional argument, default value is <code>undefined</code>)
	*  @param defaultValue (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public static function prompt(message:String=undefined, defaultValue:String=undefined):String { return '';}
	/**
	*  @param string (optional argument, default value is <code>undefined</code>)
	*  @param caseSensitive (optional argument, default value is <code>undefined</code>)
	*  @param backwards (optional argument, default value is <code>undefined</code>)
	*  @param wrap (optional argument, default value is <code>undefined</code>)
	*  @param wholeWord (optional argument, default value is <code>undefined</code>)
	*  @param searchInFrames (optional argument, default value is <code>undefined</code>)
	*  @param showDialog (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public static function find(string:String=undefined, caseSensitive:Boolean=undefined, backwards:Boolean=undefined, wrap:Boolean=undefined, wholeWord:Boolean=undefined, searchInFrames:Boolean=undefined, showDialog:Boolean=undefined):Boolean { return false;}

	public static function get offscreenBuffering():Boolean { return false; }

	public static function get outerHeight():uint { return 0; }

	public static function get outerWidth():uint { return 0; }

	public static function get innerHeight():uint { return 0; }

	public static function get innerWidth():uint { return 0; }

	public static function get screenX():uint { return 0; }

	public static function get screenY():uint { return 0; }

	public static function get screenLeft():uint { return 0; }

	public static function get screenTop():uint { return 0; }

	public static function get scrollX():uint { return 0; }

	public static function get scrollY():uint { return 0; }

	public static function get pageXOffset():uint { return 0; }

	public static function get pageYOffset():uint { return 0; }
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public static function scrollBy(x:uint=undefined, y:uint=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public static function scrollTo(x:uint=undefined, y:uint=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public static function scroll(x:uint=undefined, y:uint=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public static function moveBy(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public static function moveTo(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public static function resizeBy(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param width (optional argument, default value is <code>undefined</code>)
	*  @param height (optional argument, default value is <code>undefined</code>)
	*/
	public static function resizeTo(width:Number=undefined, height:Number=undefined):void {}

	public static function get closed():Boolean { return false; }

	public static function get length():uint { return 0; }

	public static function get name():String { return ''; }
	public static function set name(value:String):void { }

	public static function get status():String { return ''; }
	public static function set status(value:String):void { }

	public static function get defaultStatus():String { return ''; }
	public static function set defaultStatus(value:String):void { }

	public static function get defaultstatus():String { return ''; }
	public static function set defaultstatus(value:String):void { }

	/**
	*  @see randori.webkit.page.Window
	*/
	public static function get self():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public static function get window():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public static function get frames():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public static function get opener():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public static function get parent():Window { return null; }

	/**
	*  @see randori.webkit.page.Window
	*/
	public static function get top():Window { return null; }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public static function get document():Document { return null; }
	/**
	*  @param query
	*  @return A <code>MediaQueryList</code> instance.
	*/
	public static function matchMedia(query:String):MediaQueryList { return null;}

	/**
	*  @see randori.webkit.css.StyleMedia
	*/
	public static function get styleMedia():StyleMedia { return null; }
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param pseudoElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSStyleDeclaration</code> instance.
	*/
	public static function getComputedStyle(element:Element=undefined, pseudoElement:String=undefined):CSSStyleDeclaration { return null;}
	/**
	*  @param element (optional argument, default value is <code>undefined</code>)
	*  @param pseudoElement (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CSSRuleList</code> instance.
	*/
	public static function getMatchedCSSRules(element:Element=undefined, pseudoElement:String=undefined):CSSRuleList { return null;}

	public static function get devicePixelRatio():Number { return 0; }

	/**
	*  @see randori.webkit.loader.appcache.DOMApplicationCache
	*/
	public static function get applicationCache():DOMApplicationCache { return null; }

	/**
	*  @see randori.webkit.storage.Storage
	*/
	public static function get sessionStorage():Storage { return null; }

	/**
	*  @see randori.webkit.storage.Storage
	*/
	public static function get localStorage():Storage { return null; }

	/**
	*  @see randori.webkit.page.Console
	*/
	public static function get console():Console { return null; }
	/**
	*  @param message
	*  @param targetOrigin
	*  @param messagePorts (optional argument, default value is <code>null</code>)
	*/
	public static function postMessage(message:Object, targetOrigin:String, messagePorts:Array=null):void {}
	/**
	*  @param handler
	*  @param timeout (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public static function setTimeout(handler:*, timeout:uint=undefined):uint { return 0;}
	/**
	*  @param handle (optional argument, default value is <code>undefined</code>)
	*/
	public static function clearTimeout(handle:uint=undefined):void {}
	/**
	*  @param handler
	*  @param timeout (optional argument, default value is <code>undefined</code>)
	*  @return A <code>uint</code> instance.
	*/
	public static function setInterval(handler:*, timeout:uint=undefined):uint { return 0;}
	/**
	*  @param handle (optional argument, default value is <code>undefined</code>)
	*/
	public static function clearInterval(handle:uint=undefined):void {}
	/**
	*  @param string (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public static function atob(string:String=undefined):String { return '';}
	/**
	*  @param string (optional argument, default value is <code>undefined</code>)
	*  @return A <code>String</code> instance.
	*/
	public static function btoa(string:String=undefined):String { return '';}

	[JavaScriptProperty(name="CSS")]
	/**
	*  @see randori.webkit.css.CSS
	*/
	public static function get CSS_():CSS { return null; }
	public static function set CSS_(value:CSS):void { }

	/**
	*  Function that accepts an event of type <code>AbortEvent</code>.
	*/
	public static function get onabort():Function { return null; }
	public static function set onabort(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>BeforeunloadEvent</code>.
	*/
	public static function get onbeforeunload():Function { return null; }
	public static function set onbeforeunload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>BlurEvent</code>.
	*/
	public static function get onblur():Function { return null; }
	public static function set onblur(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>CanplayEvent</code>.
	*/
	public static function get oncanplay():Function { return null; }
	public static function set oncanplay(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>CanplaythroughEvent</code>.
	*/
	public static function get oncanplaythrough():Function { return null; }
	public static function set oncanplaythrough(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ChangeEvent</code>.
	*/
	public static function get onchange():Function { return null; }
	public static function set onchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ClickEvent</code>.
	*/
	public static function get onclick():Function { return null; }
	public static function set onclick(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ContextmenuEvent</code>.
	*/
	public static function get oncontextmenu():Function { return null; }
	public static function set oncontextmenu(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DblclickEvent</code>.
	*/
	public static function get ondblclick():Function { return null; }
	public static function set ondblclick(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragEvent</code>.
	*/
	public static function get ondrag():Function { return null; }
	public static function set ondrag(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragendEvent</code>.
	*/
	public static function get ondragend():Function { return null; }
	public static function set ondragend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragenterEvent</code>.
	*/
	public static function get ondragenter():Function { return null; }
	public static function set ondragenter(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragleaveEvent</code>.
	*/
	public static function get ondragleave():Function { return null; }
	public static function set ondragleave(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragoverEvent</code>.
	*/
	public static function get ondragover():Function { return null; }
	public static function set ondragover(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DragstartEvent</code>.
	*/
	public static function get ondragstart():Function { return null; }
	public static function set ondragstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DropEvent</code>.
	*/
	public static function get ondrop():Function { return null; }
	public static function set ondrop(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DurationchangeEvent</code>.
	*/
	public static function get ondurationchange():Function { return null; }
	public static function set ondurationchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>EmptiedEvent</code>.
	*/
	public static function get onemptied():Function { return null; }
	public static function set onemptied(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>EndedEvent</code>.
	*/
	public static function get onended():Function { return null; }
	public static function set onended(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ErrorEvent</code>.
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public static function get onerror():Function { return null; }
	public static function set onerror(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>FocusEvent</code>.
	*  @see randori.webkit.dom.FocusEvent
	*/
	public static function get onfocus():Function { return null; }
	public static function set onfocus(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>HashchangeEvent</code>.
	*  @see randori.webkit.dom.HashChangeEvent
	*/
	public static function get onhashchange():Function { return null; }
	public static function set onhashchange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>InputEvent</code>.
	*/
	public static function get oninput():Function { return null; }
	public static function set oninput(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>InvalidEvent</code>.
	*/
	public static function get oninvalid():Function { return null; }
	public static function set oninvalid(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>KeydownEvent</code>.
	*/
	public static function get onkeydown():Function { return null; }
	public static function set onkeydown(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>KeypressEvent</code>.
	*/
	public static function get onkeypress():Function { return null; }
	public static function set onkeypress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>KeyupEvent</code>.
	*/
	public static function get onkeyup():Function { return null; }
	public static function set onkeyup(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadEvent</code>.
	*/
	public static function get onload():Function { return null; }
	public static function set onload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadeddataEvent</code>.
	*/
	public static function get onloadeddata():Function { return null; }
	public static function set onloadeddata(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadedmetadataEvent</code>.
	*/
	public static function get onloadedmetadata():Function { return null; }
	public static function set onloadedmetadata(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>LoadstartEvent</code>.
	*/
	public static function get onloadstart():Function { return null; }
	public static function set onloadstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MessageEvent</code>.
	*  @see randori.webkit.dom.MessageEvent
	*/
	public static function get onmessage():Function { return null; }
	public static function set onmessage(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MousedownEvent</code>.
	*/
	public static function get onmousedown():Function { return null; }
	public static function set onmousedown(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MousemoveEvent</code>.
	*/
	public static function get onmousemove():Function { return null; }
	public static function set onmousemove(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MouseoutEvent</code>.
	*/
	public static function get onmouseout():Function { return null; }
	public static function set onmouseout(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MouseoverEvent</code>.
	*/
	public static function get onmouseover():Function { return null; }
	public static function set onmouseover(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MouseupEvent</code>.
	*/
	public static function get onmouseup():Function { return null; }
	public static function set onmouseup(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>MousewheelEvent</code>.
	*/
	public static function get onmousewheel():Function { return null; }
	public static function set onmousewheel(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OfflineEvent</code>.
	*/
	public static function get onoffline():Function { return null; }
	public static function set onoffline(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>OnlineEvent</code>.
	*/
	public static function get ononline():Function { return null; }
	public static function set ononline(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PagehideEvent</code>.
	*/
	public static function get onpagehide():Function { return null; }
	public static function set onpagehide(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PageshowEvent</code>.
	*/
	public static function get onpageshow():Function { return null; }
	public static function set onpageshow(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PauseEvent</code>.
	*/
	public static function get onpause():Function { return null; }
	public static function set onpause(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PlayEvent</code>.
	*/
	public static function get onplay():Function { return null; }
	public static function set onplay(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PlayingEvent</code>.
	*/
	public static function get onplaying():Function { return null; }
	public static function set onplaying(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>PopstateEvent</code>.
	*  @see randori.webkit.dom.PopStateEvent
	*/
	public static function get onpopstate():Function { return null; }
	public static function set onpopstate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ProgressEvent</code>.
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public static function get onprogress():Function { return null; }
	public static function set onprogress(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>RatechangeEvent</code>.
	*/
	public static function get onratechange():Function { return null; }
	public static function set onratechange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ResizeEvent</code>.
	*/
	public static function get onresize():Function { return null; }
	public static function set onresize(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ScrollEvent</code>.
	*/
	public static function get onscroll():Function { return null; }
	public static function set onscroll(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SeekedEvent</code>.
	*/
	public static function get onseeked():Function { return null; }
	public static function set onseeked(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SeekingEvent</code>.
	*/
	public static function get onseeking():Function { return null; }
	public static function set onseeking(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SelectEvent</code>.
	*/
	public static function get onselect():Function { return null; }
	public static function set onselect(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>StalledEvent</code>.
	*/
	public static function get onstalled():Function { return null; }
	public static function set onstalled(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>StorageEvent</code>.
	*  @see randori.webkit.storage.StorageEvent
	*/
	public static function get onstorage():Function { return null; }
	public static function set onstorage(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SubmitEvent</code>.
	*/
	public static function get onsubmit():Function { return null; }
	public static function set onsubmit(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SuspendEvent</code>.
	*/
	public static function get onsuspend():Function { return null; }
	public static function set onsuspend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TimeupdateEvent</code>.
	*/
	public static function get ontimeupdate():Function { return null; }
	public static function set ontimeupdate(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>UnloadEvent</code>.
	*/
	public static function get onunload():Function { return null; }
	public static function set onunload(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>VolumechangeEvent</code>.
	*/
	public static function get onvolumechange():Function { return null; }
	public static function set onvolumechange(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>WaitingEvent</code>.
	*/
	public static function get onwaiting():Function { return null; }
	public static function set onwaiting(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>ResetEvent</code>.
	*/
	public static function get onreset():Function { return null; }
	public static function set onreset(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>SearchEvent</code>.
	*/
	public static function get onsearch():Function { return null; }
	public static function set onsearch(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TransitionendEvent</code>.
	*/
	public static function get ontransitionend():Function { return null; }
	public static function set ontransitionend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchstartEvent</code>.
	*/
	public static function get ontouchstart():Function { return null; }
	public static function set ontouchstart(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchmoveEvent</code>.
	*/
	public static function get ontouchmove():Function { return null; }
	public static function set ontouchmove(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchendEvent</code>.
	*/
	public static function get ontouchend():Function { return null; }
	public static function set ontouchend(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>TouchcancelEvent</code>.
	*/
	public static function get ontouchcancel():Function { return null; }
	public static function set ontouchcancel(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DevicemotionEvent</code>.
	*  @see randori.webkit.dom.DeviceMotionEvent
	*/
	public static function get ondevicemotion():Function { return null; }
	public static function set ondevicemotion(value:Function):void { }

	/**
	*  Function that accepts an event of type <code>DeviceorientationEvent</code>.
	*  @see randori.webkit.dom.DeviceOrientationEvent
	*/
	public static function get ondeviceorientation():Function { return null; }
	public static function set ondeviceorientation(value:Function):void { }
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public static function addEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param type
	*  @param listener
	*  @param useCapture (optional argument, default value is <code>false</code>)
	*/
	public static function removeEventListener(type:String, listener:Function, useCapture:Boolean=false):void {}
	/**
	*  @param evt
	*  @return A <code>Boolean</code> instance.
	*/
	public static function dispatchEvent(evt:DomEvent):Boolean { return false;}
	public static function captureEvents():void {}
	public static function releaseEvents():void {}

	[JavaScriptProperty(name="StyleSheet")]
	/**
	*  @see randori.webkit.css.StyleSheet
	*/
	public static function get StyleSheet_():StyleSheet { return null; }
	public static function set StyleSheet_(value:StyleSheet):void { }

	[JavaScriptProperty(name="CSSStyleSheet")]
	/**
	*  @see randori.webkit.css.CSSStyleSheet
	*/
	public static function get CSSStyleSheet_():CSSStyleSheet { return null; }
	public static function set CSSStyleSheet_(value:CSSStyleSheet):void { }

	[JavaScriptProperty(name="CSSValue")]
	/**
	*  @see randori.webkit.css.CSSValue
	*/
	public static function get CSSValue_():CSSValue { return null; }
	public static function set CSSValue_(value:CSSValue):void { }

	[JavaScriptProperty(name="CSSPrimitiveValue")]
	/**
	*  @see randori.webkit.css.CSSPrimitiveValue
	*/
	public static function get CSSPrimitiveValue_():CSSPrimitiveValue { return null; }
	public static function set CSSPrimitiveValue_(value:CSSPrimitiveValue):void { }

	[JavaScriptProperty(name="CSSValueList")]
	/**
	*  @see randori.webkit.css.CSSValueList
	*/
	public static function get CSSValueList_():CSSValueList { return null; }
	public static function set CSSValueList_(value:CSSValueList):void { }

	[JavaScriptProperty(name="CSSRule")]
	/**
	*  @see randori.webkit.css.CSSRule
	*/
	public static function get CSSRule_():CSSRule { return null; }
	public static function set CSSRule_(value:CSSRule):void { }

	[JavaScriptProperty(name="CSSCharsetRule")]
	/**
	*  @see randori.webkit.css.CSSCharsetRule
	*/
	public static function get CSSCharsetRule_():CSSCharsetRule { return null; }
	public static function set CSSCharsetRule_(value:CSSCharsetRule):void { }

	[JavaScriptProperty(name="CSSFontFaceRule")]
	/**
	*  @see randori.webkit.css.CSSFontFaceRule
	*/
	public static function get CSSFontFaceRule_():CSSFontFaceRule { return null; }
	public static function set CSSFontFaceRule_(value:CSSFontFaceRule):void { }

	[JavaScriptProperty(name="CSSImportRule")]
	/**
	*  @see randori.webkit.css.CSSImportRule
	*/
	public static function get CSSImportRule_():CSSImportRule { return null; }
	public static function set CSSImportRule_(value:CSSImportRule):void { }

	[JavaScriptProperty(name="CSSMediaRule")]
	/**
	*  @see randori.webkit.css.CSSMediaRule
	*/
	public static function get CSSMediaRule_():CSSMediaRule { return null; }
	public static function set CSSMediaRule_(value:CSSMediaRule):void { }

	[JavaScriptProperty(name="CSSPageRule")]
	/**
	*  @see randori.webkit.css.CSSPageRule
	*/
	public static function get CSSPageRule_():CSSPageRule { return null; }
	public static function set CSSPageRule_(value:CSSPageRule):void { }

	[JavaScriptProperty(name="CSSStyleRule")]
	/**
	*  @see randori.webkit.css.CSSStyleRule
	*/
	public static function get CSSStyleRule_():CSSStyleRule { return null; }
	public static function set CSSStyleRule_(value:CSSStyleRule):void { }

	[JavaScriptProperty(name="CSSStyleDeclaration")]
	/**
	*  @see randori.webkit.css.CSSStyleDeclaration
	*/
	public static function get CSSStyleDeclaration_():CSSStyleDeclaration { return null; }
	public static function set CSSStyleDeclaration_(value:CSSStyleDeclaration):void { }

	[JavaScriptProperty(name="MediaList")]
	/**
	*  @see randori.webkit.css.MediaList
	*/
	public static function get MediaList_():MediaList { return null; }
	public static function set MediaList_(value:MediaList):void { }

	[JavaScriptProperty(name="Counter")]
	/**
	*  @see randori.webkit.css.Counter
	*/
	public static function get Counter_():Counter { return null; }
	public static function set Counter_(value:Counter):void { }

	[JavaScriptProperty(name="CSSRuleList")]
	/**
	*  @see randori.webkit.css.CSSRuleList
	*/
	public static function get CSSRuleList_():CSSRuleList { return null; }
	public static function set CSSRuleList_(value:CSSRuleList):void { }

	[JavaScriptProperty(name="Rect")]
	/**
	*  @see randori.webkit.css.Rect
	*/
	public static function get Rect_():Rect { return null; }
	public static function set Rect_(value:Rect):void { }

	[JavaScriptProperty(name="RGBColor")]
	/**
	*  @see randori.webkit.css.RGBColor
	*/
	public static function get RGBColor_():RGBColor { return null; }
	public static function set RGBColor_(value:RGBColor):void { }

	[JavaScriptProperty(name="StyleSheetList")]
	/**
	*  @see randori.webkit.css.StyleSheetList
	*/
	public static function get StyleSheetList_():StyleSheetList { return null; }
	public static function set StyleSheetList_(value:StyleSheetList):void { }

	public static function get DOMException():Object { return null; }
	public static function set DOMException(value:Object):void { }

	[JavaScriptProperty(name="DOMStringList")]
	/**
	*  @see randori.webkit.dom.DOMStringList
	*/
	public static function get DOMStringList_():DOMStringList { return null; }
	public static function set DOMStringList_(value:DOMStringList):void { }

	[JavaScriptProperty(name="DOMImplementation")]
	/**
	*  @see randori.webkit.dom.DOMImplementation
	*/
	public static function get DOMImplementation_():DOMImplementation { return null; }
	public static function set DOMImplementation_(value:DOMImplementation):void { }

	[JavaScriptProperty(name="DOMSettableTokenList")]
	/**
	*  @see randori.webkit.html.DOMSettableTokenList
	*/
	public static function get DOMSettableTokenList_():DOMSettableTokenList { return null; }
	public static function set DOMSettableTokenList_(value:DOMSettableTokenList):void { }

	[JavaScriptProperty(name="DOMTokenList")]
	/**
	*  @see randori.webkit.html.DOMTokenList
	*/
	public static function get DOMTokenList_():DOMTokenList { return null; }
	public static function set DOMTokenList_(value:DOMTokenList):void { }

	[JavaScriptProperty(name="DocumentFragment")]
	/**
	*  @see randori.webkit.dom.DocumentFragment
	*/
	public static function get DocumentFragment_():DocumentFragment { return null; }
	public static function set DocumentFragment_(value:DocumentFragment):void { }

	[JavaScriptProperty(name="Document")]
	/**
	*  @see randori.webkit.dom.Document
	*/
	public static function get Document_():Document { return null; }
	public static function set Document_(value:Document):void { }

	[JavaScriptProperty(name="Node")]
	/**
	*  @see randori.webkit.dom.Node
	*/
	public static function get Node_():Node { return null; }
	public static function set Node_(value:Node):void { }

	[JavaScriptProperty(name="NodeList")]
	/**
	*  @see randori.webkit.dom.NodeList
	*/
	public static function get NodeList_():NodeList { return null; }
	public static function set NodeList_(value:NodeList):void { }

	[JavaScriptProperty(name="PropertyNodeList")]
	/**
	*  @see randori.webkit.dom.PropertyNodeList
	*/
	public static function get PropertyNodeList_():PropertyNodeList { return null; }
	public static function set PropertyNodeList_(value:PropertyNodeList):void { }

	[JavaScriptProperty(name="NamedNodeMap")]
	/**
	*  @see randori.webkit.dom.NamedNodeMap
	*/
	public static function get NamedNodeMap_():NamedNodeMap { return null; }
	public static function set NamedNodeMap_(value:NamedNodeMap):void { }

	[JavaScriptProperty(name="CharacterData")]
	/**
	*  @see randori.webkit.dom.CharacterData
	*/
	public static function get CharacterData_():CharacterData { return null; }
	public static function set CharacterData_(value:CharacterData):void { }

	[JavaScriptProperty(name="Attr")]
	/**
	*  @see randori.webkit.dom.Attr
	*/
	public static function get Attr_():Attr { return null; }
	public static function set Attr_(value:Attr):void { }

	[JavaScriptProperty(name="Element")]
	/**
	*  @see randori.webkit.dom.Element
	*/
	public static function get Element_():Element { return null; }
	public static function set Element_(value:Element):void { }

	[JavaScriptProperty(name="Text")]
	/**
	*  @see randori.webkit.dom.Text
	*/
	public static function get Text_():Text { return null; }
	public static function set Text_(value:Text):void { }

	[JavaScriptProperty(name="Comment")]
	/**
	*  @see randori.webkit.dom.Comment
	*/
	public static function get Comment_():Comment { return null; }
	public static function set Comment_(value:Comment):void { }

	[JavaScriptProperty(name="CDATASection")]
	/**
	*  @see randori.webkit.dom.CDATASection
	*/
	public static function get CDATASection_():CDATASection { return null; }
	public static function set CDATASection_(value:CDATASection):void { }

	[JavaScriptProperty(name="DocumentType")]
	/**
	*  @see randori.webkit.dom.DocumentType
	*/
	public static function get DocumentType_():DocumentType { return null; }
	public static function set DocumentType_(value:DocumentType):void { }

	[JavaScriptProperty(name="Notation")]
	/**
	*  @see randori.webkit.dom.Notation
	*/
	public static function get Notation_():Notation { return null; }
	public static function set Notation_(value:Notation):void { }

	[JavaScriptProperty(name="Entity")]
	/**
	*  @see randori.webkit.dom.Entity
	*/
	public static function get Entity_():Entity { return null; }
	public static function set Entity_(value:Entity):void { }

	[JavaScriptProperty(name="EntityReference")]
	/**
	*  @see randori.webkit.dom.EntityReference
	*/
	public static function get EntityReference_():EntityReference { return null; }
	public static function set EntityReference_(value:EntityReference):void { }

	/**
	*  @see randori.webkit.html.canvas.DOMPath
	*/
	public static function get Path():DOMPath { return null; }
	public static function set Path(value:DOMPath):void { }

	[JavaScriptProperty(name="ProcessingInstruction")]
	/**
	*  @see randori.webkit.dom.ProcessingInstruction
	*/
	public static function get ProcessingInstruction_():ProcessingInstruction { return null; }
	public static function set ProcessingInstruction_(value:ProcessingInstruction):void { }

	[JavaScriptProperty(name="HTMLContentElement")]
	/**
	*  @see randori.webkit.html.shadow.HTMLContentElement
	*/
	public static function get HTMLContentElement_():HTMLContentElement { return null; }
	public static function set HTMLContentElement_(value:HTMLContentElement):void { }

	[JavaScriptProperty(name="HTMLShadowElement")]
	/**
	*  @see randori.webkit.html.shadow.HTMLShadowElement
	*/
	public static function get HTMLShadowElement_():HTMLShadowElement { return null; }
	public static function set HTMLShadowElement_(value:HTMLShadowElement):void { }

	[JavaScriptProperty(name="Selection")]
	/**
	*  @see randori.webkit.page.Selection
	*/
	public static function get Selection_():Selection { return null; }
	public static function set Selection_(value:Selection):void { }

	[JavaScriptProperty(name="Window")]
	/**
	*  @see randori.webkit.page.Window
	*/
	public static function get Window__():Window { return null; }
	public static function set Window__(value:Window):void { }

	[JavaScriptProperty(name="HTMLDocument")]
	/**
	*  @see randori.webkit.html.HTMLDocument
	*/
	public static function get HTMLDocument_():HTMLDocument { return null; }
	public static function set HTMLDocument_(value:HTMLDocument):void { }

	[JavaScriptProperty(name="HTMLElement")]
	/**
	*  @see randori.webkit.html.HTMLElement
	*/
	public static function get HTMLElement_():HTMLElement { return null; }
	public static function set HTMLElement_(value:HTMLElement):void { }

	[JavaScriptProperty(name="HTMLAnchorElement")]
	/**
	*  @see randori.webkit.html.HTMLAnchorElement
	*/
	public static function get HTMLAnchorElement_():HTMLAnchorElement { return null; }
	public static function set HTMLAnchorElement_(value:HTMLAnchorElement):void { }

	[JavaScriptProperty(name="HTMLAppletElement")]
	/**
	*  @see randori.webkit.html.HTMLAppletElement
	*/
	public static function get HTMLAppletElement_():HTMLAppletElement { return null; }
	public static function set HTMLAppletElement_(value:HTMLAppletElement):void { }

	[JavaScriptProperty(name="HTMLAreaElement")]
	/**
	*  @see randori.webkit.html.HTMLAreaElement
	*/
	public static function get HTMLAreaElement_():HTMLAreaElement { return null; }
	public static function set HTMLAreaElement_(value:HTMLAreaElement):void { }

	[JavaScriptProperty(name="HTMLBRElement")]
	/**
	*  @see randori.webkit.html.HTMLBRElement
	*/
	public static function get HTMLBRElement_():HTMLBRElement { return null; }
	public static function set HTMLBRElement_(value:HTMLBRElement):void { }

	[JavaScriptProperty(name="HTMLBaseElement")]
	/**
	*  @see randori.webkit.html.HTMLBaseElement
	*/
	public static function get HTMLBaseElement_():HTMLBaseElement { return null; }
	public static function set HTMLBaseElement_(value:HTMLBaseElement):void { }

	[JavaScriptProperty(name="HTMLBaseFontElement")]
	/**
	*  @see randori.webkit.html.HTMLBaseFontElement
	*/
	public static function get HTMLBaseFontElement_():HTMLBaseFontElement { return null; }
	public static function set HTMLBaseFontElement_(value:HTMLBaseFontElement):void { }

	[JavaScriptProperty(name="HTMLBodyElement")]
	/**
	*  @see randori.webkit.html.HTMLBodyElement
	*/
	public static function get HTMLBodyElement_():HTMLBodyElement { return null; }
	public static function set HTMLBodyElement_(value:HTMLBodyElement):void { }

	[JavaScriptProperty(name="HTMLButtonElement")]
	/**
	*  @see randori.webkit.html.HTMLButtonElement
	*/
	public static function get HTMLButtonElement_():HTMLButtonElement { return null; }
	public static function set HTMLButtonElement_(value:HTMLButtonElement):void { }

	[JavaScriptProperty(name="HTMLCanvasElement")]
	/**
	*  @see randori.webkit.html.HTMLCanvasElement
	*/
	public static function get HTMLCanvasElement_():HTMLCanvasElement { return null; }
	public static function set HTMLCanvasElement_(value:HTMLCanvasElement):void { }

	[JavaScriptProperty(name="HTMLDListElement")]
	/**
	*  @see randori.webkit.html.HTMLDListElement
	*/
	public static function get HTMLDListElement_():HTMLDListElement { return null; }
	public static function set HTMLDListElement_(value:HTMLDListElement):void { }

	[JavaScriptProperty(name="HTMLDataListElement")]
	/**
	*  @see randori.webkit.html.HTMLDataListElement
	*/
	public static function get HTMLDataListElement_():HTMLDataListElement { return null; }
	public static function set HTMLDataListElement_(value:HTMLDataListElement):void { }

	[JavaScriptProperty(name="HTMLDialogElement")]
	/**
	*  @see randori.webkit.html.HTMLDialogElement
	*/
	public static function get HTMLDialogElement_():HTMLDialogElement { return null; }
	public static function set HTMLDialogElement_(value:HTMLDialogElement):void { }

	[JavaScriptProperty(name="HTMLDirectoryElement")]
	/**
	*  @see randori.webkit.html.HTMLDirectoryElement
	*/
	public static function get HTMLDirectoryElement_():HTMLDirectoryElement { return null; }
	public static function set HTMLDirectoryElement_(value:HTMLDirectoryElement):void { }

	[JavaScriptProperty(name="HTMLDivElement")]
	/**
	*  @see randori.webkit.html.HTMLDivElement
	*/
	public static function get HTMLDivElement_():HTMLDivElement { return null; }
	public static function set HTMLDivElement_(value:HTMLDivElement):void { }

	[JavaScriptProperty(name="HTMLEmbedElement")]
	/**
	*  @see randori.webkit.html.HTMLEmbedElement
	*/
	public static function get HTMLEmbedElement_():HTMLEmbedElement { return null; }
	public static function set HTMLEmbedElement_(value:HTMLEmbedElement):void { }

	[JavaScriptProperty(name="HTMLFieldSetElement")]
	/**
	*  @see randori.webkit.html.HTMLFieldSetElement
	*/
	public static function get HTMLFieldSetElement_():HTMLFieldSetElement { return null; }
	public static function set HTMLFieldSetElement_(value:HTMLFieldSetElement):void { }

	[JavaScriptProperty(name="HTMLFontElement")]
	/**
	*  @see randori.webkit.html.HTMLFontElement
	*/
	public static function get HTMLFontElement_():HTMLFontElement { return null; }
	public static function set HTMLFontElement_(value:HTMLFontElement):void { }

	[JavaScriptProperty(name="HTMLFormElement")]
	/**
	*  @see randori.webkit.html.HTMLFormElement
	*/
	public static function get HTMLFormElement_():HTMLFormElement { return null; }
	public static function set HTMLFormElement_(value:HTMLFormElement):void { }

	[JavaScriptProperty(name="HTMLFrameElement")]
	/**
	*  @see randori.webkit.html.HTMLFrameElement
	*/
	public static function get HTMLFrameElement_():HTMLFrameElement { return null; }
	public static function set HTMLFrameElement_(value:HTMLFrameElement):void { }

	[JavaScriptProperty(name="HTMLFrameSetElement")]
	/**
	*  @see randori.webkit.html.HTMLFrameSetElement
	*/
	public static function get HTMLFrameSetElement_():HTMLFrameSetElement { return null; }
	public static function set HTMLFrameSetElement_(value:HTMLFrameSetElement):void { }

	[JavaScriptProperty(name="HTMLHRElement")]
	/**
	*  @see randori.webkit.html.HTMLHRElement
	*/
	public static function get HTMLHRElement_():HTMLHRElement { return null; }
	public static function set HTMLHRElement_(value:HTMLHRElement):void { }

	[JavaScriptProperty(name="HTMLHeadElement")]
	/**
	*  @see randori.webkit.html.HTMLHeadElement
	*/
	public static function get HTMLHeadElement_():HTMLHeadElement { return null; }
	public static function set HTMLHeadElement_(value:HTMLHeadElement):void { }

	[JavaScriptProperty(name="HTMLHeadingElement")]
	/**
	*  @see randori.webkit.html.HTMLHeadingElement
	*/
	public static function get HTMLHeadingElement_():HTMLHeadingElement { return null; }
	public static function set HTMLHeadingElement_(value:HTMLHeadingElement):void { }

	[JavaScriptProperty(name="HTMLHtmlElement")]
	/**
	*  @see randori.webkit.html.HTMLHtmlElement
	*/
	public static function get HTMLHtmlElement_():HTMLHtmlElement { return null; }
	public static function set HTMLHtmlElement_(value:HTMLHtmlElement):void { }

	[JavaScriptProperty(name="HTMLIFrameElement")]
	/**
	*  @see randori.webkit.html.HTMLIFrameElement
	*/
	public static function get HTMLIFrameElement_():HTMLIFrameElement { return null; }
	public static function set HTMLIFrameElement_(value:HTMLIFrameElement):void { }

	[JavaScriptProperty(name="HTMLImageElement")]
	/**
	*  @see randori.webkit.html.HTMLImageElement
	*/
	public static function get HTMLImageElement_():HTMLImageElement { return null; }
	public static function set HTMLImageElement_(value:HTMLImageElement):void { }

	[JavaScriptProperty(name="HTMLInputElement")]
	/**
	*  @see randori.webkit.html.HTMLInputElement
	*/
	public static function get HTMLInputElement_():HTMLInputElement { return null; }
	public static function set HTMLInputElement_(value:HTMLInputElement):void { }

	[JavaScriptProperty(name="HTMLKeygenElement")]
	/**
	*  @see randori.webkit.html.HTMLKeygenElement
	*/
	public static function get HTMLKeygenElement_():HTMLKeygenElement { return null; }
	public static function set HTMLKeygenElement_(value:HTMLKeygenElement):void { }

	[JavaScriptProperty(name="HTMLLIElement")]
	/**
	*  @see randori.webkit.html.HTMLLIElement
	*/
	public static function get HTMLLIElement_():HTMLLIElement { return null; }
	public static function set HTMLLIElement_(value:HTMLLIElement):void { }

	[JavaScriptProperty(name="HTMLLabelElement")]
	/**
	*  @see randori.webkit.html.HTMLLabelElement
	*/
	public static function get HTMLLabelElement_():HTMLLabelElement { return null; }
	public static function set HTMLLabelElement_(value:HTMLLabelElement):void { }

	[JavaScriptProperty(name="HTMLLegendElement")]
	/**
	*  @see randori.webkit.html.HTMLLegendElement
	*/
	public static function get HTMLLegendElement_():HTMLLegendElement { return null; }
	public static function set HTMLLegendElement_(value:HTMLLegendElement):void { }

	[JavaScriptProperty(name="HTMLLinkElement")]
	/**
	*  @see randori.webkit.html.HTMLLinkElement
	*/
	public static function get HTMLLinkElement_():HTMLLinkElement { return null; }
	public static function set HTMLLinkElement_(value:HTMLLinkElement):void { }

	[JavaScriptProperty(name="HTMLMapElement")]
	/**
	*  @see randori.webkit.html.HTMLMapElement
	*/
	public static function get HTMLMapElement_():HTMLMapElement { return null; }
	public static function set HTMLMapElement_(value:HTMLMapElement):void { }

	[JavaScriptProperty(name="HTMLMarqueeElement")]
	/**
	*  @see randori.webkit.html.HTMLMarqueeElement
	*/
	public static function get HTMLMarqueeElement_():HTMLMarqueeElement { return null; }
	public static function set HTMLMarqueeElement_(value:HTMLMarqueeElement):void { }

	[JavaScriptProperty(name="HTMLMenuElement")]
	/**
	*  @see randori.webkit.html.HTMLMenuElement
	*/
	public static function get HTMLMenuElement_():HTMLMenuElement { return null; }
	public static function set HTMLMenuElement_(value:HTMLMenuElement):void { }

	[JavaScriptProperty(name="HTMLMetaElement")]
	/**
	*  @see randori.webkit.html.HTMLMetaElement
	*/
	public static function get HTMLMetaElement_():HTMLMetaElement { return null; }
	public static function set HTMLMetaElement_(value:HTMLMetaElement):void { }

	[JavaScriptProperty(name="HTMLModElement")]
	/**
	*  @see randori.webkit.html.HTMLModElement
	*/
	public static function get HTMLModElement_():HTMLModElement { return null; }
	public static function set HTMLModElement_(value:HTMLModElement):void { }

	[JavaScriptProperty(name="HTMLOListElement")]
	/**
	*  @see randori.webkit.html.HTMLOListElement
	*/
	public static function get HTMLOListElement_():HTMLOListElement { return null; }
	public static function set HTMLOListElement_(value:HTMLOListElement):void { }

	[JavaScriptProperty(name="HTMLObjectElement")]
	/**
	*  @see randori.webkit.html.HTMLObjectElement
	*/
	public static function get HTMLObjectElement_():HTMLObjectElement { return null; }
	public static function set HTMLObjectElement_(value:HTMLObjectElement):void { }

	[JavaScriptProperty(name="HTMLOptGroupElement")]
	/**
	*  @see randori.webkit.html.HTMLOptGroupElement
	*/
	public static function get HTMLOptGroupElement_():HTMLOptGroupElement { return null; }
	public static function set HTMLOptGroupElement_(value:HTMLOptGroupElement):void { }

	[JavaScriptProperty(name="HTMLOptionElement")]
	/**
	*  @see randori.webkit.html.HTMLOptionElement
	*/
	public static function get HTMLOptionElement_():HTMLOptionElement { return null; }
	public static function set HTMLOptionElement_(value:HTMLOptionElement):void { }

	[JavaScriptProperty(name="HTMLOutputElement")]
	/**
	*  @see randori.webkit.html.HTMLOutputElement
	*/
	public static function get HTMLOutputElement_():HTMLOutputElement { return null; }
	public static function set HTMLOutputElement_(value:HTMLOutputElement):void { }

	[JavaScriptProperty(name="HTMLParagraphElement")]
	/**
	*  @see randori.webkit.html.HTMLParagraphElement
	*/
	public static function get HTMLParagraphElement_():HTMLParagraphElement { return null; }
	public static function set HTMLParagraphElement_(value:HTMLParagraphElement):void { }

	[JavaScriptProperty(name="HTMLParamElement")]
	/**
	*  @see randori.webkit.html.HTMLParamElement
	*/
	public static function get HTMLParamElement_():HTMLParamElement { return null; }
	public static function set HTMLParamElement_(value:HTMLParamElement):void { }

	[JavaScriptProperty(name="HTMLPreElement")]
	/**
	*  @see randori.webkit.html.HTMLPreElement
	*/
	public static function get HTMLPreElement_():HTMLPreElement { return null; }
	public static function set HTMLPreElement_(value:HTMLPreElement):void { }

	[JavaScriptProperty(name="HTMLQuoteElement")]
	/**
	*  @see randori.webkit.html.HTMLQuoteElement
	*/
	public static function get HTMLQuoteElement_():HTMLQuoteElement { return null; }
	public static function set HTMLQuoteElement_(value:HTMLQuoteElement):void { }

	[JavaScriptProperty(name="HTMLScriptElement")]
	/**
	*  @see randori.webkit.html.HTMLScriptElement
	*/
	public static function get HTMLScriptElement_():HTMLScriptElement { return null; }
	public static function set HTMLScriptElement_(value:HTMLScriptElement):void { }

	[JavaScriptProperty(name="HTMLSelectElement")]
	/**
	*  @see randori.webkit.html.HTMLSelectElement
	*/
	public static function get HTMLSelectElement_():HTMLSelectElement { return null; }
	public static function set HTMLSelectElement_(value:HTMLSelectElement):void { }

	[JavaScriptProperty(name="HTMLSpanElement")]
	/**
	*  @see randori.webkit.html.HTMLSpanElement
	*/
	public static function get HTMLSpanElement_():HTMLSpanElement { return null; }
	public static function set HTMLSpanElement_(value:HTMLSpanElement):void { }

	[JavaScriptProperty(name="HTMLStyleElement")]
	/**
	*  @see randori.webkit.html.HTMLStyleElement
	*/
	public static function get HTMLStyleElement_():HTMLStyleElement { return null; }
	public static function set HTMLStyleElement_(value:HTMLStyleElement):void { }

	[JavaScriptProperty(name="HTMLTableCaptionElement")]
	/**
	*  @see randori.webkit.html.HTMLTableCaptionElement
	*/
	public static function get HTMLTableCaptionElement_():HTMLTableCaptionElement { return null; }
	public static function set HTMLTableCaptionElement_(value:HTMLTableCaptionElement):void { }

	[JavaScriptProperty(name="HTMLTableCellElement")]
	/**
	*  @see randori.webkit.html.HTMLTableCellElement
	*/
	public static function get HTMLTableCellElement_():HTMLTableCellElement { return null; }
	public static function set HTMLTableCellElement_(value:HTMLTableCellElement):void { }

	[JavaScriptProperty(name="HTMLTableColElement")]
	/**
	*  @see randori.webkit.html.HTMLTableColElement
	*/
	public static function get HTMLTableColElement_():HTMLTableColElement { return null; }
	public static function set HTMLTableColElement_(value:HTMLTableColElement):void { }

	[JavaScriptProperty(name="HTMLTableElement")]
	/**
	*  @see randori.webkit.html.HTMLTableElement
	*/
	public static function get HTMLTableElement_():HTMLTableElement { return null; }
	public static function set HTMLTableElement_(value:HTMLTableElement):void { }

	[JavaScriptProperty(name="HTMLTableRowElement")]
	/**
	*  @see randori.webkit.html.HTMLTableRowElement
	*/
	public static function get HTMLTableRowElement_():HTMLTableRowElement { return null; }
	public static function set HTMLTableRowElement_(value:HTMLTableRowElement):void { }

	[JavaScriptProperty(name="HTMLTableSectionElement")]
	/**
	*  @see randori.webkit.html.HTMLTableSectionElement
	*/
	public static function get HTMLTableSectionElement_():HTMLTableSectionElement { return null; }
	public static function set HTMLTableSectionElement_(value:HTMLTableSectionElement):void { }

	[JavaScriptProperty(name="HTMLTemplateElement")]
	/**
	*  @see randori.webkit.html.HTMLTemplateElement
	*/
	public static function get HTMLTemplateElement_():HTMLTemplateElement { return null; }
	public static function set HTMLTemplateElement_(value:HTMLTemplateElement):void { }

	[JavaScriptProperty(name="HTMLTextAreaElement")]
	/**
	*  @see randori.webkit.html.HTMLTextAreaElement
	*/
	public static function get HTMLTextAreaElement_():HTMLTextAreaElement { return null; }
	public static function set HTMLTextAreaElement_(value:HTMLTextAreaElement):void { }

	[JavaScriptProperty(name="HTMLTitleElement")]
	/**
	*  @see randori.webkit.html.HTMLTitleElement
	*/
	public static function get HTMLTitleElement_():HTMLTitleElement { return null; }
	public static function set HTMLTitleElement_(value:HTMLTitleElement):void { }

	[JavaScriptProperty(name="HTMLUListElement")]
	/**
	*  @see randori.webkit.html.HTMLUListElement
	*/
	public static function get HTMLUListElement_():HTMLUListElement { return null; }
	public static function set HTMLUListElement_(value:HTMLUListElement):void { }

	[JavaScriptProperty(name="HTMLCollection")]
	/**
	*  @see randori.webkit.html.HTMLCollection
	*/
	public static function get HTMLCollection_():HTMLCollection { return null; }
	public static function set HTMLCollection_(value:HTMLCollection):void { }

	[JavaScriptProperty(name="HTMLAllCollection")]
	/**
	*  @see randori.webkit.html.HTMLAllCollection
	*/
	public static function get HTMLAllCollection_():HTMLAllCollection { return null; }
	public static function set HTMLAllCollection_(value:HTMLAllCollection):void { }

	[JavaScriptProperty(name="HTMLFormControlsCollection")]
	/**
	*  @see randori.webkit.html.HTMLFormControlsCollection
	*/
	public static function get HTMLFormControlsCollection_():HTMLFormControlsCollection { return null; }
	public static function set HTMLFormControlsCollection_(value:HTMLFormControlsCollection):void { }

	[JavaScriptProperty(name="HTMLOptionsCollection")]
	/**
	*  @see randori.webkit.html.HTMLOptionsCollection
	*/
	public static function get HTMLOptionsCollection_():HTMLOptionsCollection { return null; }
	public static function set HTMLOptionsCollection_(value:HTMLOptionsCollection):void { }

	[JavaScriptProperty(name="HTMLPropertiesCollection")]
	/**
	*  @see randori.webkit.html.HTMLPropertiesCollection
	*/
	public static function get HTMLPropertiesCollection_():HTMLPropertiesCollection { return null; }
	public static function set HTMLPropertiesCollection_(value:HTMLPropertiesCollection):void { }

	[JavaScriptProperty(name="HTMLUnknownElement")]
	/**
	*  @see randori.webkit.html.HTMLUnknownElement
	*/
	public static function get HTMLUnknownElement_():HTMLUnknownElement { return null; }
	public static function set HTMLUnknownElement_(value:HTMLUnknownElement):void { }

	/**
	*  @see randori.webkit.html.HTMLImageElement
	*/
	public static function get Image():HTMLImageElement { return null; }
	public static function set Image(value:HTMLImageElement):void { }

	/**
	*  @see randori.webkit.html.HTMLOptionElement
	*/
	public static function get Option():HTMLOptionElement { return null; }
	public static function set Option(value:HTMLOptionElement):void { }

	[JavaScriptProperty(name="MediaKeyEvent")]
	/**
	*  @see randori.webkit.html.MediaKeyEvent
	*/
	public static function get MediaKeyEvent_():MediaKeyEvent { return null; }
	public static function set MediaKeyEvent_(value:MediaKeyEvent):void { }

	[JavaScriptProperty(name="MediaKeys")]
	/**
	*  @see randori.webkit.modules.encryptedmedia.MediaKeys
	*/
	public static function get MediaKeys_():MediaKeys { return null; }
	public static function set MediaKeys_(value:MediaKeys):void { }

	[JavaScriptProperty(name="MediaKeyError")]
	/**
	*  @see randori.webkit.html.MediaKeyError
	*/
	public static function get MediaKeyError_():MediaKeyError { return null; }
	public static function set MediaKeyError_(value:MediaKeyError):void { }

	[JavaScriptProperty(name="MediaKeyMessageEvent")]
	/**
	*  @see randori.webkit.modules.encryptedmedia.MediaKeyMessageEvent
	*/
	public static function get MediaKeyMessageEvent_():MediaKeyMessageEvent { return null; }
	public static function set MediaKeyMessageEvent_(value:MediaKeyMessageEvent):void { }

	[JavaScriptProperty(name="MediaKeyNeededEvent")]
	/**
	*  @see randori.webkit.modules.encryptedmedia.MediaKeyNeededEvent
	*/
	public static function get MediaKeyNeededEvent_():MediaKeyNeededEvent { return null; }
	public static function set MediaKeyNeededEvent_(value:MediaKeyNeededEvent):void { }

	[JavaScriptProperty(name="HTMLTrackElement")]
	/**
	*  @see randori.webkit.html.HTMLTrackElement
	*/
	public static function get HTMLTrackElement_():HTMLTrackElement { return null; }
	public static function set HTMLTrackElement_(value:HTMLTrackElement):void { }

	[JavaScriptProperty(name="TextTrack")]
	/**
	*  @see randori.webkit.html.track.TextTrack
	*/
	public static function get TextTrack_():TextTrack { return null; }
	public static function set TextTrack_(value:TextTrack):void { }

	[JavaScriptProperty(name="TextTrackCue")]
	/**
	*  @see randori.webkit.html.track.TextTrackCue
	*/
	public static function get TextTrackCue_():TextTrackCue { return null; }
	public static function set TextTrackCue_(value:TextTrackCue):void { }

	[JavaScriptProperty(name="TextTrackCueList")]
	/**
	*  @see randori.webkit.html.track.TextTrackCueList
	*/
	public static function get TextTrackCueList_():TextTrackCueList { return null; }
	public static function set TextTrackCueList_(value:TextTrackCueList):void { }

	[JavaScriptProperty(name="TextTrackList")]
	/**
	*  @see randori.webkit.html.track.TextTrackList
	*/
	public static function get TextTrackList_():TextTrackList { return null; }
	public static function set TextTrackList_(value:TextTrackList):void { }

	[JavaScriptProperty(name="TextTrackRegion")]
	/**
	*  @see randori.webkit.html.track.TextTrackRegion
	*/
	public static function get TextTrackRegion_():TextTrackRegion { return null; }
	public static function set TextTrackRegion_(value:TextTrackRegion):void { }

	[JavaScriptProperty(name="TrackEvent")]
	/**
	*  @see randori.webkit.html.track.TrackEvent
	*/
	public static function get TrackEvent_():TrackEvent { return null; }
	public static function set TrackEvent_(value:TrackEvent):void { }

	/**
	*  @see randori.webkit.html.HTMLAudioElement
	*/
	public static function get Audio():HTMLAudioElement { return null; }
	public static function set Audio(value:HTMLAudioElement):void { }

	[JavaScriptProperty(name="HTMLAudioElement")]
	/**
	*  @see randori.webkit.html.HTMLAudioElement
	*/
	public static function get HTMLAudioElement_():HTMLAudioElement { return null; }
	public static function set HTMLAudioElement_(value:HTMLAudioElement):void { }

	[JavaScriptProperty(name="HTMLMediaElement")]
	/**
	*  @see randori.webkit.html.HTMLMediaElement
	*/
	public static function get HTMLMediaElement_():HTMLMediaElement { return null; }
	public static function set HTMLMediaElement_(value:HTMLMediaElement):void { }

	[JavaScriptProperty(name="HTMLVideoElement")]
	/**
	*  @see randori.webkit.html.HTMLVideoElement
	*/
	public static function get HTMLVideoElement_():HTMLVideoElement { return null; }
	public static function set HTMLVideoElement_(value:HTMLVideoElement):void { }

	[JavaScriptProperty(name="MediaError")]
	/**
	*  @see randori.webkit.html.MediaError
	*/
	public static function get MediaError_():MediaError { return null; }
	public static function set MediaError_(value:MediaError):void { }

	[JavaScriptProperty(name="TimeRanges")]
	/**
	*  @see randori.webkit.html.TimeRanges
	*/
	public static function get TimeRanges_():TimeRanges { return null; }
	public static function set TimeRanges_(value:TimeRanges):void { }

	[JavaScriptProperty(name="HTMLSourceElement")]
	/**
	*  @see randori.webkit.html.HTMLSourceElement
	*/
	public static function get HTMLSourceElement_():HTMLSourceElement { return null; }
	public static function set HTMLSourceElement_(value:HTMLSourceElement):void { }

	[JavaScriptProperty(name="MediaController")]
	/**
	*  @see randori.webkit.html.MediaController
	*/
	public static function get MediaController_():MediaController { return null; }
	public static function set MediaController_(value:MediaController):void { }

	[JavaScriptProperty(name="CanvasPattern")]
	/**
	*  @see randori.webkit.html.canvas.CanvasPattern
	*/
	public static function get CanvasPattern_():CanvasPattern { return null; }
	public static function set CanvasPattern_(value:CanvasPattern):void { }

	[JavaScriptProperty(name="CanvasGradient")]
	/**
	*  @see randori.webkit.html.canvas.CanvasGradient
	*/
	public static function get CanvasGradient_():CanvasGradient { return null; }
	public static function set CanvasGradient_(value:CanvasGradient):void { }

	[JavaScriptProperty(name="CanvasRenderingContext2D")]
	/**
	*  @see randori.webkit.html.canvas.CanvasRenderingContext2D
	*/
	public static function get CanvasRenderingContext2D_():CanvasRenderingContext2D { return null; }
	public static function set CanvasRenderingContext2D_(value:CanvasRenderingContext2D):void { }

	[JavaScriptProperty(name="ImageData")]
	/**
	*  @see randori.webkit.html.ImageData
	*/
	public static function get ImageData_():ImageData { return null; }
	public static function set ImageData_(value:ImageData):void { }

	[JavaScriptProperty(name="TextMetrics")]
	/**
	*  @see randori.webkit.html.TextMetrics
	*/
	public static function get TextMetrics_():TextMetrics { return null; }
	public static function set TextMetrics_(value:TextMetrics):void { }

	[JavaScriptProperty(name="WebGLActiveInfo")]
	/**
	*  @see randori.webkit.html.canvas.WebGLActiveInfo
	*/
	public static function get WebGLActiveInfo_():WebGLActiveInfo { return null; }
	public static function set WebGLActiveInfo_(value:WebGLActiveInfo):void { }

	[JavaScriptProperty(name="WebGLBuffer")]
	/**
	*  @see randori.webkit.html.canvas.WebGLBuffer
	*/
	public static function get WebGLBuffer_():WebGLBuffer { return null; }
	public static function set WebGLBuffer_(value:WebGLBuffer):void { }

	[JavaScriptProperty(name="WebGLFramebuffer")]
	/**
	*  @see randori.webkit.html.canvas.WebGLFramebuffer
	*/
	public static function get WebGLFramebuffer_():WebGLFramebuffer { return null; }
	public static function set WebGLFramebuffer_(value:WebGLFramebuffer):void { }

	[JavaScriptProperty(name="WebGLProgram")]
	/**
	*  @see randori.webkit.html.canvas.WebGLProgram
	*/
	public static function get WebGLProgram_():WebGLProgram { return null; }
	public static function set WebGLProgram_(value:WebGLProgram):void { }

	[JavaScriptProperty(name="WebGLRenderbuffer")]
	/**
	*  @see randori.webkit.html.canvas.WebGLRenderbuffer
	*/
	public static function get WebGLRenderbuffer_():WebGLRenderbuffer { return null; }
	public static function set WebGLRenderbuffer_(value:WebGLRenderbuffer):void { }

	[JavaScriptProperty(name="WebGLRenderingContext")]
	/**
	*  @see randori.webkit.html.canvas.WebGLRenderingContext
	*/
	public static function get WebGLRenderingContext_():WebGLRenderingContext { return null; }
	public static function set WebGLRenderingContext_(value:WebGLRenderingContext):void { }

	[JavaScriptProperty(name="WebGLShader")]
	/**
	*  @see randori.webkit.html.canvas.WebGLShader
	*/
	public static function get WebGLShader_():WebGLShader { return null; }
	public static function set WebGLShader_(value:WebGLShader):void { }

	[JavaScriptProperty(name="WebGLShaderPrecisionFormat")]
	/**
	*  @see randori.webkit.html.canvas.WebGLShaderPrecisionFormat
	*/
	public static function get WebGLShaderPrecisionFormat_():WebGLShaderPrecisionFormat { return null; }
	public static function set WebGLShaderPrecisionFormat_(value:WebGLShaderPrecisionFormat):void { }

	[JavaScriptProperty(name="WebGLTexture")]
	/**
	*  @see randori.webkit.html.canvas.WebGLTexture
	*/
	public static function get WebGLTexture_():WebGLTexture { return null; }
	public static function set WebGLTexture_(value:WebGLTexture):void { }

	[JavaScriptProperty(name="WebGLUniformLocation")]
	/**
	*  @see randori.webkit.html.canvas.WebGLUniformLocation
	*/
	public static function get WebGLUniformLocation_():WebGLUniformLocation { return null; }
	public static function set WebGLUniformLocation_(value:WebGLUniformLocation):void { }

	[JavaScriptProperty(name="DOMStringMap")]
	/**
	*  @see randori.webkit.dom.DOMStringMap
	*/
	public static function get DOMStringMap_():DOMStringMap { return null; }
	public static function set DOMStringMap_(value:DOMStringMap):void { }

	[JavaScriptProperty(name="ArrayBuffer")]
	/**
	*  @see randori.webkit.html.canvas.ArrayBuffer
	*/
	public static function get ArrayBuffer_():ArrayBuffer { return null; }
	public static function set ArrayBuffer_(value:ArrayBuffer):void { }

	[JavaScriptProperty(name="ArrayBufferView")]
	/**
	*  @see randori.webkit.html.canvas.ArrayBufferView
	*/
	public static function get ArrayBufferView_():ArrayBufferView { return null; }
	public static function set ArrayBufferView_(value:ArrayBufferView):void { }

	[JavaScriptProperty(name="Int8Array")]
	/**
	*  @see randori.webkit.html.canvas.Int8Array
	*/
	public static function get Int8Array_():Object { return null; }
	public static function set Int8Array_(value:Object):void { }

	[JavaScriptProperty(name="Uint8Array")]
	/**
	*  @see randori.webkit.html.canvas.Uint8Array
	*/
	public static function get Uint8Array_():Object { return null; }
	public static function set Uint8Array_(value:Object):void { }

	[JavaScriptProperty(name="Uint8ClampedArray")]
	/**
	*  @see randori.webkit.html.canvas.Uint8ClampedArray
	*/
	public static function get Uint8ClampedArray_():Object { return null; }
	public static function set Uint8ClampedArray_(value:Object):void { }

	[JavaScriptProperty(name="Int16Array")]
	/**
	*  @see randori.webkit.html.canvas.Int16Array
	*/
	public static function get Int16Array_():Object { return null; }
	public static function set Int16Array_(value:Object):void { }

	[JavaScriptProperty(name="Uint16Array")]
	/**
	*  @see randori.webkit.html.canvas.Uint16Array
	*/
	public static function get Uint16Array_():Object { return null; }
	public static function set Uint16Array_(value:Object):void { }

	[JavaScriptProperty(name="Int32Array")]
	/**
	*  @see randori.webkit.html.canvas.Int32Array
	*/
	public static function get Int32Array_():Object { return null; }
	public static function set Int32Array_(value:Object):void { }

	[JavaScriptProperty(name="Uint32Array")]
	/**
	*  @see randori.webkit.html.canvas.Uint32Array
	*/
	public static function get Uint32Array_():Object { return null; }
	public static function set Uint32Array_(value:Object):void { }

	[JavaScriptProperty(name="Float32Array")]
	/**
	*  @see randori.webkit.html.canvas.Float32Array
	*/
	public static function get Float32Array_():Object { return null; }
	public static function set Float32Array_(value:Object):void { }

	[JavaScriptProperty(name="Float64Array")]
	/**
	*  @see randori.webkit.html.canvas.Float64Array
	*/
	public static function get Float64Array_():Object { return null; }
	public static function set Float64Array_(value:Object):void { }

	[JavaScriptProperty(name="DataView")]
	/**
	*  @see randori.webkit.html.canvas.DataView
	*/
	public static function get DataView_():DataView { return null; }
	public static function set DataView_(value:DataView):void { }

	/**
	*  @see randori.webkit.dom.DomEvent
	*/
	public static function get Event():DomEvent { return null; }
	public static function set Event(value:DomEvent):void { }

	[JavaScriptProperty(name="BeforeLoadEvent")]
	/**
	*  @see randori.webkit.dom.BeforeLoadEvent
	*/
	public static function get BeforeLoadEvent_():BeforeLoadEvent { return null; }
	public static function set BeforeLoadEvent_(value:BeforeLoadEvent):void { }

	[JavaScriptProperty(name="CompositionEvent")]
	/**
	*  @see randori.webkit.dom.CompositionEvent
	*/
	public static function get CompositionEvent_():CompositionEvent { return null; }
	public static function set CompositionEvent_(value:CompositionEvent):void { }

	[JavaScriptProperty(name="CustomEvent")]
	/**
	*  @see randori.webkit.dom.CustomEvent
	*/
	public static function get CustomEvent_():CustomEvent { return null; }
	public static function set CustomEvent_(value:CustomEvent):void { }

	[JavaScriptProperty(name="ErrorEvent")]
	/**
	*  @see randori.webkit.dom.ErrorEvent
	*/
	public static function get ErrorEvent_():ErrorEvent { return null; }
	public static function set ErrorEvent_(value:ErrorEvent):void { }

	[JavaScriptProperty(name="FocusEvent")]
	/**
	*  @see randori.webkit.dom.FocusEvent
	*/
	public static function get FocusEvent_():FocusEvent { return null; }
	public static function set FocusEvent_(value:FocusEvent):void { }

	[JavaScriptProperty(name="HashChangeEvent")]
	/**
	*  @see randori.webkit.dom.HashChangeEvent
	*/
	public static function get HashChangeEvent_():HashChangeEvent { return null; }
	public static function set HashChangeEvent_(value:HashChangeEvent):void { }

	[JavaScriptProperty(name="KeyboardEvent")]
	/**
	*  @see randori.webkit.dom.KeyboardEvent
	*/
	public static function get KeyboardEvent_():KeyboardEvent { return null; }
	public static function set KeyboardEvent_(value:KeyboardEvent):void { }

	[JavaScriptProperty(name="MessageEvent")]
	/**
	*  @see randori.webkit.dom.MessageEvent
	*/
	public static function get MessageEvent_():MessageEvent { return null; }
	public static function set MessageEvent_(value:MessageEvent):void { }

	[JavaScriptProperty(name="MouseEvent")]
	/**
	*  @see randori.webkit.dom.MouseEvent
	*/
	public static function get MouseEvent_():MouseEvent { return null; }
	public static function set MouseEvent_(value:MouseEvent):void { }

	[JavaScriptProperty(name="MutationEvent")]
	/**
	*  @see randori.webkit.dom.MutationEvent
	*/
	public static function get MutationEvent_():MutationEvent { return null; }
	public static function set MutationEvent_(value:MutationEvent):void { }

	[JavaScriptProperty(name="OverflowEvent")]
	/**
	*  @see randori.webkit.dom.OverflowEvent
	*/
	public static function get OverflowEvent_():OverflowEvent { return null; }
	public static function set OverflowEvent_(value:OverflowEvent):void { }

	[JavaScriptProperty(name="PopStateEvent")]
	/**
	*  @see randori.webkit.dom.PopStateEvent
	*/
	public static function get PopStateEvent_():PopStateEvent { return null; }
	public static function set PopStateEvent_(value:PopStateEvent):void { }

	[JavaScriptProperty(name="PageTransitionEvent")]
	/**
	*  @see randori.webkit.dom.PageTransitionEvent
	*/
	public static function get PageTransitionEvent_():PageTransitionEvent { return null; }
	public static function set PageTransitionEvent_(value:PageTransitionEvent):void { }

	[JavaScriptProperty(name="ProgressEvent")]
	/**
	*  @see randori.webkit.dom.ProgressEvent
	*/
	public static function get ProgressEvent_():ProgressEvent { return null; }
	public static function set ProgressEvent_(value:ProgressEvent):void { }

	[JavaScriptProperty(name="TextEvent")]
	/**
	*  @see randori.webkit.dom.TextEvent
	*/
	public static function get TextEvent_():TextEvent { return null; }
	public static function set TextEvent_(value:TextEvent):void { }

	[JavaScriptProperty(name="TransitionEvent")]
	/**
	*  @see randori.webkit.dom.TransitionEvent
	*/
	public static function get TransitionEvent_():TransitionEvent { return null; }
	public static function set TransitionEvent_(value:TransitionEvent):void { }

	[JavaScriptProperty(name="UIEvent")]
	/**
	*  @see randori.webkit.dom.UIEvent
	*/
	public static function get UIEvent_():UIEvent { return null; }
	public static function set UIEvent_(value:UIEvent):void { }

	[JavaScriptProperty(name="WheelEvent")]
	/**
	*  @see randori.webkit.dom.WheelEvent
	*/
	public static function get WheelEvent_():WheelEvent { return null; }
	public static function set WheelEvent_(value:WheelEvent):void { }

	[JavaScriptProperty(name="XMLHttpRequestProgressEvent")]
	/**
	*  @see randori.webkit.xml.XMLHttpRequestProgressEvent
	*/
	public static function get XMLHttpRequestProgressEvent_():XMLHttpRequestProgressEvent { return null; }
	public static function set XMLHttpRequestProgressEvent_(value:XMLHttpRequestProgressEvent):void { }

	[JavaScriptProperty(name="DeviceMotionEvent")]
	/**
	*  @see randori.webkit.dom.DeviceMotionEvent
	*/
	public static function get DeviceMotionEvent_():DeviceMotionEvent { return null; }
	public static function set DeviceMotionEvent_(value:DeviceMotionEvent):void { }

	[JavaScriptProperty(name="DeviceOrientationEvent")]
	/**
	*  @see randori.webkit.dom.DeviceOrientationEvent
	*/
	public static function get DeviceOrientationEvent_():DeviceOrientationEvent { return null; }
	public static function set DeviceOrientationEvent_(value:DeviceOrientationEvent):void { }

	[JavaScriptProperty(name="Touch")]
	/**
	*  @see randori.webkit.dom.Touch
	*/
	public static function get Touch_():Touch { return null; }
	public static function set Touch_(value:Touch):void { }

	[JavaScriptProperty(name="TouchEvent")]
	/**
	*  @see randori.webkit.dom.TouchEvent
	*/
	public static function get TouchEvent_():TouchEvent { return null; }
	public static function set TouchEvent_(value:TouchEvent):void { }

	[JavaScriptProperty(name="TouchList")]
	/**
	*  @see randori.webkit.dom.TouchList
	*/
	public static function get TouchList_():TouchList { return null; }
	public static function set TouchList_(value:TouchList):void { }

	[JavaScriptProperty(name="StorageEvent")]
	/**
	*  @see randori.webkit.storage.StorageEvent
	*/
	public static function get StorageEvent_():StorageEvent { return null; }
	public static function set StorageEvent_(value:StorageEvent):void { }

	[JavaScriptProperty(name="SpeechInputEvent")]
	/**
	*  @see randori.webkit.page.SpeechInputEvent
	*/
	public static function get SpeechInputEvent_():SpeechInputEvent { return null; }
	public static function set SpeechInputEvent_(value:SpeechInputEvent):void { }

	[JavaScriptProperty(name="WebGLContextEvent")]
	/**
	*  @see randori.webkit.html.canvas.WebGLContextEvent
	*/
	public static function get WebGLContextEvent_():WebGLContextEvent { return null; }
	public static function set WebGLContextEvent_(value:WebGLContextEvent):void { }

	[JavaScriptProperty(name="DeviceProximityEvent")]
	/**
	*  @see randori.webkit.modules.proximity.DeviceProximityEvent
	*/
	public static function get DeviceProximityEvent_():DeviceProximityEvent { return null; }
	public static function set DeviceProximityEvent_(value:DeviceProximityEvent):void { }

	[JavaScriptProperty(name="AutocompleteErrorEvent")]
	/**
	*  @see randori.webkit.dom.AutocompleteErrorEvent
	*/
	public static function get AutocompleteErrorEvent_():AutocompleteErrorEvent { return null; }
	public static function set AutocompleteErrorEvent_(value:AutocompleteErrorEvent):void { }

	public static function get EventException():Object { return null; }
	public static function set EventException(value:Object):void { }

	[JavaScriptProperty(name="Clipboard")]
	/**
	*  @see randori.webkit.dom.Clipboard
	*/
	public static function get Clipboard_():Clipboard { return null; }
	public static function set Clipboard_(value:Clipboard):void { }

	[JavaScriptProperty(name="Worker")]
	/**
	*  @see randori.webkit.workers.Worker
	*/
	public static function get Worker_():Worker { return null; }
	public static function set Worker_(value:Worker):void { }

	[JavaScriptProperty(name="SharedWorker")]
	/**
	*  @see randori.webkit.workers.SharedWorker
	*/
	public static function get SharedWorker_():SharedWorker { return null; }
	public static function set SharedWorker_(value:SharedWorker):void { }

	[JavaScriptProperty(name="File")]
	/**
	*  @see randori.webkit.fileapi.File
	*/
	public static function get File_():File { return null; }
	public static function set File_(value:File):void { }

	[JavaScriptProperty(name="FileList")]
	/**
	*  @see randori.webkit.fileapi.FileList
	*/
	public static function get FileList_():FileList { return null; }
	public static function set FileList_(value:FileList):void { }

	[JavaScriptProperty(name="Blob")]
	/**
	*  @see randori.webkit.fileapi.Blob
	*/
	public static function get Blob_():Blob { return null; }
	public static function set Blob_(value:Blob):void { }

	[JavaScriptProperty(name="NodeFilter")]
	/**
	*  @see randori.webkit.dom.NodeFilter
	*/
	public static function get NodeFilter_():NodeFilter { return null; }
	public static function set NodeFilter_(value:NodeFilter):void { }

	[JavaScriptProperty(name="Range")]
	/**
	*  @see randori.webkit.dom.Range
	*/
	public static function get Range_():Range { return null; }
	public static function set Range_(value:Range):void { }

	public static function get RangeException():Object { return null; }
	public static function set RangeException(value:Object):void { }

	[JavaScriptProperty(name="EventSource")]
	/**
	*  @see randori.webkit.page.EventSource
	*/
	public static function get EventSource_():EventSource { return null; }
	public static function set EventSource_(value:EventSource):void { }

	/**
	*  @see randori.webkit.dom.Document
	*/
	public static function get XMLDocument():Document { return null; }
	public static function set XMLDocument(value:Document):void { }

	[JavaScriptProperty(name="DOMParser")]
	/**
	*  @see randori.webkit.xml.DOMParser
	*/
	public static function get DOMParser_():DOMParser { return null; }
	public static function set DOMParser_(value:DOMParser):void { }

	[JavaScriptProperty(name="XMLSerializer")]
	/**
	*  @see randori.webkit.xml.XMLSerializer
	*/
	public static function get XMLSerializer_():XMLSerializer { return null; }
	public static function set XMLSerializer_(value:XMLSerializer):void { }

	[JavaScriptProperty(name="XMLHttpRequest")]
	/**
	*  @see randori.webkit.xml.XMLHttpRequest
	*/
	public static function get XMLHttpRequest_():XMLHttpRequest { return null; }
	public static function set XMLHttpRequest_(value:XMLHttpRequest):void { }

	[JavaScriptProperty(name="XMLHttpRequestUpload")]
	/**
	*  @see randori.webkit.xml.XMLHttpRequestUpload
	*/
	public static function get XMLHttpRequestUpload_():XMLHttpRequestUpload { return null; }
	public static function set XMLHttpRequestUpload_(value:XMLHttpRequestUpload):void { }

	public static function get XMLHttpRequestException():Object { return null; }
	public static function set XMLHttpRequestException(value:Object):void { }

	[JavaScriptProperty(name="XSLTProcessor")]
	/**
	*  @see randori.webkit.xml.XSLTProcessor
	*/
	public static function get XSLTProcessor_():XSLTProcessor { return null; }
	public static function set XSLTProcessor_(value:XSLTProcessor):void { }

	[JavaScriptProperty(name="Plugin")]
	/**
	*  @see randori.webkit.plugins.Plugin
	*/
	public static function get Plugin_():Plugin { return null; }
	public static function set Plugin_(value:Plugin):void { }

	[JavaScriptProperty(name="PluginArray")]
	/**
	*  @see randori.webkit.plugins.PluginArray
	*/
	public static function get PluginArray_():Object { return null; }
	public static function set PluginArray_(value:Object):void { }

	[JavaScriptProperty(name="MimeType")]
	/**
	*  @see randori.webkit.plugins.MimeType
	*/
	public static function get MimeType_():MimeType { return null; }
	public static function set MimeType_(value:MimeType):void { }

	[JavaScriptProperty(name="MimeTypeArray")]
	/**
	*  @see randori.webkit.plugins.MimeTypeArray
	*/
	public static function get MimeTypeArray_():Object { return null; }
	public static function set MimeTypeArray_(value:Object):void { }

	[JavaScriptProperty(name="ClientRect")]
	/**
	*  @see randori.webkit.dom.ClientRect
	*/
	public static function get ClientRect_():ClientRect { return null; }
	public static function set ClientRect_(value:ClientRect):void { }

	[JavaScriptProperty(name="ClientRectList")]
	/**
	*  @see randori.webkit.dom.ClientRectList
	*/
	public static function get ClientRectList_():ClientRectList { return null; }
	public static function set ClientRectList_(value:ClientRectList):void { }

	[JavaScriptProperty(name="Storage")]
	/**
	*  @see randori.webkit.storage.Storage
	*/
	public static function get Storage_():Storage { return null; }
	public static function set Storage_(value:Storage):void { }

	[JavaScriptProperty(name="XPathEvaluator")]
	/**
	*  @see randori.webkit.xml.XPathEvaluator
	*/
	public static function get XPathEvaluator_():XPathEvaluator { return null; }
	public static function set XPathEvaluator_(value:XPathEvaluator):void { }

	[JavaScriptProperty(name="XPathResult")]
	/**
	*  @see randori.webkit.xml.XPathResult
	*/
	public static function get XPathResult_():XPathResult { return null; }
	public static function set XPathResult_(value:XPathResult):void { }

	public static function get XPathException():Object { return null; }
	public static function set XPathException(value:Object):void { }

	[JavaScriptProperty(name="SVGZoomEvent")]
	/**
	*  @see randori.webkit.svg.SVGZoomEvent
	*/
	public static function get SVGZoomEvent_():SVGZoomEvent { return null; }
	public static function set SVGZoomEvent_(value:SVGZoomEvent):void { }

	[JavaScriptProperty(name="FormData")]
	/**
	*  @see randori.webkit.html.FormData
	*/
	public static function get FormData_():FormData { return null; }
	public static function set FormData_(value:FormData):void { }

	[JavaScriptProperty(name="FileError")]
	/**
	*  @see randori.webkit.fileapi.FileError
	*/
	public static function get FileError_():FileError { return null; }
	public static function set FileError_(value:FileError):void { }

	[JavaScriptProperty(name="FileReader")]
	/**
	*  @see randori.webkit.fileapi.FileReader
	*/
	public static function get FileReader_():FileReader { return null; }
	public static function set FileReader_(value:FileReader):void { }

	[JavaScriptProperty(name="URL")]
	/**
	*  @see randori.webkit.html.URL
	*/
	public static function get URL_():URL { return null; }
	public static function set URL_(value:URL):void { }

	[JavaScriptProperty(name="MutationObserver")]
	/**
	*  @see randori.webkit.dom.MutationObserver
	*/
	public static function get MutationObserver_():MutationObserver { return null; }
	public static function set MutationObserver_(value:MutationObserver):void { }
	/**
	*  @param JSONString
	*  @return A <code>Object</code> instance.
	*/
	public static function JSON(JSONString:String):Object { return null;}
}

}