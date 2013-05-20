
/*******************************************************************************************************

  This file was auto generated with the tool "WebIDLParser"

  Content was generated from IDL file:
  http://trac.webkit.org/browser/trunk/Source/WebCore/html/canvas/CanvasRenderingContext2D.idl

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


package randori.webkit.html.canvas
{

import randori.webkit.html.TextMetrics;
import randori.webkit.html.HTMLImageElement;
import randori.webkit.html.HTMLCanvasElement;
import randori.webkit.html.ImageData;

[JavaScript(export="false", name="CanvasRenderingContext2D")]
/**
 *  @author RandoriAS Web IDL Parser
 *  @version 1.0
 *  @see randori.webkit.html.canvas.CanvasRenderingContext
 */
public class CanvasRenderingContext2D extends CanvasRenderingContext
{
	public function save():void {}
	public function restore():void {}
	/**
	*  @param sx (optional argument, default value is <code>undefined</code>)
	*  @param sy (optional argument, default value is <code>undefined</code>)
	*/
	public function scale(sx:Number=undefined, sy:Number=undefined):void {}
	/**
	*  @param angle (optional argument, default value is <code>undefined</code>)
	*/
	public function rotate(angle:Number=undefined):void {}
	/**
	*  @param tx (optional argument, default value is <code>undefined</code>)
	*  @param ty (optional argument, default value is <code>undefined</code>)
	*/
	public function translate(tx:Number=undefined, ty:Number=undefined):void {}
	/**
	*  @param m11 (optional argument, default value is <code>undefined</code>)
	*  @param m12 (optional argument, default value is <code>undefined</code>)
	*  @param m21 (optional argument, default value is <code>undefined</code>)
	*  @param m22 (optional argument, default value is <code>undefined</code>)
	*  @param dx (optional argument, default value is <code>undefined</code>)
	*  @param dy (optional argument, default value is <code>undefined</code>)
	*/
	public function transform(m11:Number=undefined, m12:Number=undefined, m21:Number=undefined, m22:Number=undefined, dx:Number=undefined, dy:Number=undefined):void {}
	/**
	*  @param m11 (optional argument, default value is <code>undefined</code>)
	*  @param m12 (optional argument, default value is <code>undefined</code>)
	*  @param m21 (optional argument, default value is <code>undefined</code>)
	*  @param m22 (optional argument, default value is <code>undefined</code>)
	*  @param dx (optional argument, default value is <code>undefined</code>)
	*  @param dy (optional argument, default value is <code>undefined</code>)
	*/
	public function setTransform(m11:Number=undefined, m12:Number=undefined, m21:Number=undefined, m22:Number=undefined, dx:Number=undefined, dy:Number=undefined):void {}

	public function get globalAlpha():Number { return undefined; }
	public function set globalAlpha(value:Number):void { }

	public function get globalCompositeOperation():String { return undefined; }
	public function set globalCompositeOperation(value:String):void { }
	/**
	*  @param x0 (optional argument, default value is <code>undefined</code>)
	*  @param y0 (optional argument, default value is <code>undefined</code>)
	*  @param x1 (optional argument, default value is <code>undefined</code>)
	*  @param y1 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CanvasGradient</code> instance.
	*/
	public function createLinearGradient(x0:Number=undefined, y0:Number=undefined, x1:Number=undefined, y1:Number=undefined):CanvasGradient { return undefined;}
	/**
	*  @param x0 (optional argument, default value is <code>undefined</code>)
	*  @param y0 (optional argument, default value is <code>undefined</code>)
	*  @param r0 (optional argument, default value is <code>undefined</code>)
	*  @param x1 (optional argument, default value is <code>undefined</code>)
	*  @param y1 (optional argument, default value is <code>undefined</code>)
	*  @param r1 (optional argument, default value is <code>undefined</code>)
	*  @return A <code>CanvasGradient</code> instance.
	*/
	public function createRadialGradient(x0:Number=undefined, y0:Number=undefined, r0:Number=undefined, x1:Number=undefined, y1:Number=undefined, r1:Number=undefined):CanvasGradient { return undefined;}

	public function get lineWidth():Number { return undefined; }
	public function set lineWidth(value:Number):void { }

	public function get lineCap():String { return undefined; }
	public function set lineCap(value:String):void { }

	public function get lineJoin():String { return undefined; }
	public function set lineJoin(value:String):void { }

	public function get miterLimit():Number { return undefined; }
	public function set miterLimit(value:Number):void { }

	public function get shadowOffsetX():Number { return undefined; }
	public function set shadowOffsetX(value:Number):void { }

	public function get shadowOffsetY():Number { return undefined; }
	public function set shadowOffsetY(value:Number):void { }

	public function get shadowBlur():Number { return undefined; }
	public function set shadowBlur(value:Number):void { }

	public function get shadowColor():String { return undefined; }
	public function set shadowColor(value:String):void { }
	/**
	*  @param dash
	*/
	public function setLineDash(dash:Vector.<Number>):void {}
	/**
	*  @return A <code>sequence</code> instance.
	*/
	public function getLineDash():Vector.<Number> { return undefined;}

	public function get lineDashOffset():Number { return undefined; }
	public function set lineDashOffset(value:Number):void { }
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param width (optional argument, default value is <code>undefined</code>)
	*  @param height (optional argument, default value is <code>undefined</code>)
	*/
	public function clearRect(x:Number=undefined, y:Number=undefined, width:Number=undefined, height:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param width (optional argument, default value is <code>undefined</code>)
	*  @param height (optional argument, default value is <code>undefined</code>)
	*/
	public function fillRect(x:Number=undefined, y:Number=undefined, width:Number=undefined, height:Number=undefined):void {}
	public function beginPath():void {}
	public function closePath():void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function moveTo(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function lineTo(x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param cpx (optional argument, default value is <code>undefined</code>)
	*  @param cpy (optional argument, default value is <code>undefined</code>)
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function quadraticCurveTo(cpx:Number=undefined, cpy:Number=undefined, x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param cp1x (optional argument, default value is <code>undefined</code>)
	*  @param cp1y (optional argument, default value is <code>undefined</code>)
	*  @param cp2x (optional argument, default value is <code>undefined</code>)
	*  @param cp2y (optional argument, default value is <code>undefined</code>)
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*/
	public function bezierCurveTo(cp1x:Number=undefined, cp1y:Number=undefined, cp2x:Number=undefined, cp2y:Number=undefined, x:Number=undefined, y:Number=undefined):void {}
	/**
	*  @param x1 (optional argument, default value is <code>undefined</code>)
	*  @param y1 (optional argument, default value is <code>undefined</code>)
	*  @param x2 (optional argument, default value is <code>undefined</code>)
	*  @param y2 (optional argument, default value is <code>undefined</code>)
	*  @param radius (optional argument, default value is <code>undefined</code>)
	*/
	public function arcTo(x1:Number=undefined, y1:Number=undefined, x2:Number=undefined, y2:Number=undefined, radius:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param width (optional argument, default value is <code>undefined</code>)
	*  @param height (optional argument, default value is <code>undefined</code>)
	*/
	public function rect(x:Number=undefined, y:Number=undefined, width:Number=undefined, height:Number=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param radius (optional argument, default value is <code>undefined</code>)
	*  @param startAngle (optional argument, default value is <code>undefined</code>)
	*  @param endAngle (optional argument, default value is <code>undefined</code>)
	*  @param anticlockwise (optional argument, default value is <code>undefined</code>)
	*/
	public function arc(x:Number=undefined, y:Number=undefined, radius:Number=undefined, startAngle:Number=undefined, endAngle:Number=undefined, anticlockwise:Boolean=undefined):void {}
	/**
	*  @param winding (optional argument, default value is <code>undefined</code>)
	*/
	public function fill(winding:Object=undefined):void {}
	public function stroke():void {}
	/**
	*  @param winding (optional argument, default value is <code>undefined</code>)
	*/
	public function clip(winding:Object=undefined):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param winding (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isPointInPath(x:Number=undefined, y:Number=undefined, winding:Object=undefined):Boolean { return undefined;}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @return A <code>Boolean</code> instance.
	*/
	public function isPointInStroke(x:Number=undefined, y:Number=undefined):Boolean { return undefined;}

	public function get font():String { return undefined; }
	public function set font(value:String):void { }

	public function get textAlign():String { return undefined; }
	public function set textAlign(value:String):void { }

	public function get textBaseline():String { return undefined; }
	public function set textBaseline(value:String):void { }
	/**
	*  @param text (optional argument, default value is <code>undefined</code>)
	*  @return A <code>TextMetrics</code> instance.
	*/
	public function measureText(text:String=undefined):TextMetrics { return undefined;}
	/**
	*  @param alpha (optional argument, default value is <code>undefined</code>)
	*/
	public function setAlpha(alpha:Number=undefined):void {}
	/**
	*  @param compositeOperation (optional argument, default value is <code>undefined</code>)
	*/
	public function setCompositeOperation(compositeOperation:String=undefined):void {}
	/**
	*  @param width (optional argument, default value is <code>undefined</code>)
	*/
	public function setLineWidth(width:Number=undefined):void {}
	/**
	*  @param cap (optional argument, default value is <code>undefined</code>)
	*/
	public function setLineCap(cap:String=undefined):void {}
	/**
	*  @param join (optional argument, default value is <code>undefined</code>)
	*/
	public function setLineJoin(join:String=undefined):void {}
	/**
	*  @param limit (optional argument, default value is <code>undefined</code>)
	*/
	public function setMiterLimit(limit:Number=undefined):void {}
	public function clearShadow():void {}
	/**
	*  @param text
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param maxWidth (optional argument, default value is <code>undefined</code>)
	*/
	public function fillText(text:String, x:Number=undefined, y:Number=undefined, maxWidth:Number=undefined):void {}
	/**
	*  @param text
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param maxWidth (optional argument, default value is <code>undefined</code>)
	*/
	public function strokeText(text:String, x:Number=undefined, y:Number=undefined, maxWidth:Number=undefined):void {}
	[JavaScriptMethod(name="setStrokeColor")]
	/**
	*  @param color
	*/
	public function setStrokeColor1(color:String):void {}
	[JavaScriptMethod(name="setStrokeColor")]
	/**
	*  @param color
	*  @param alpha (optional argument, default value is <code>undefined</code>)
	*/
	public function setStrokeColor2(color:String, alpha:Number=undefined):void {}
	[JavaScriptMethod(name="setStrokeColor")]
	/**
	*  @param grayLevel
	*/
	public function setStrokeColor3(grayLevel:Number):void {}
	[JavaScriptMethod(name="setStrokeColor")]
	/**
	*  @param grayLevel
	*  @param alpha (optional argument, default value is <code>undefined</code>)
	*/
	public function setStrokeColor4(grayLevel:Number, alpha:Number=undefined):void {}
	[JavaScriptMethod(name="setStrokeColor")]
	/**
	*  @param r
	*  @param g
	*  @param b
	*  @param a
	*/
	public function setStrokeColor5(r:Number, g:Number, b:Number, a:Number):void {}
	[JavaScriptMethod(name="setStrokeColor")]
	/**
	*  @param c
	*  @param m
	*  @param y
	*  @param k
	*  @param a
	*/
	public function setStrokeColor6(c:Number, m:Number, y:Number, k:Number, a:Number):void {}
	[JavaScriptMethod(name="setFillColor")]
	/**
	*  @param color
	*/
	public function setFillColor1(color:String):void {}
	[JavaScriptMethod(name="setFillColor")]
	/**
	*  @param color
	*  @param alpha (optional argument, default value is <code>undefined</code>)
	*/
	public function setFillColor2(color:String, alpha:Number=undefined):void {}
	[JavaScriptMethod(name="setFillColor")]
	/**
	*  @param grayLevel
	*/
	public function setFillColor3(grayLevel:Number):void {}
	[JavaScriptMethod(name="setFillColor")]
	/**
	*  @param grayLevel
	*  @param alpha (optional argument, default value is <code>undefined</code>)
	*/
	public function setFillColor4(grayLevel:Number, alpha:Number=undefined):void {}
	[JavaScriptMethod(name="setFillColor")]
	/**
	*  @param r
	*  @param g
	*  @param b
	*  @param a
	*/
	public function setFillColor5(r:Number, g:Number, b:Number, a:Number):void {}
	[JavaScriptMethod(name="setFillColor")]
	/**
	*  @param c
	*  @param m
	*  @param y
	*  @param k
	*  @param a
	*/
	public function setFillColor6(c:Number, m:Number, y:Number, k:Number, a:Number):void {}
	/**
	*  @param x (optional argument, default value is <code>undefined</code>)
	*  @param y (optional argument, default value is <code>undefined</code>)
	*  @param width (optional argument, default value is <code>undefined</code>)
	*  @param height (optional argument, default value is <code>undefined</code>)
	*  @param lineWidth (optional argument, default value is <code>undefined</code>)
	*/
	public function strokeRect(x:Number=undefined, y:Number=undefined, width:Number=undefined, height:Number=undefined, lineWidth:Number=undefined):void {}
	[JavaScriptMethod(name="drawImage")]
	/**
	*  @param image
	*  @param x
	*  @param y
	*/
	public function drawImage1(image:HTMLImageElement, x:Number, y:Number):void {}
	[JavaScriptMethod(name="drawImage")]
	/**
	*  @param image
	*  @param x
	*  @param y
	*  @param width
	*  @param height
	*/
	public function drawImage2(image:HTMLImageElement, x:Number, y:Number, width:Number, height:Number):void {}
	[JavaScriptMethod(name="drawImage")]
	/**
	*  @param image
	*  @param sx
	*  @param sy
	*  @param sw
	*  @param sh
	*  @param dx
	*  @param dy
	*  @param dw
	*  @param dh
	*/
	public function drawImage3(image:HTMLImageElement, sx:Number, sy:Number, sw:Number, sh:Number, dx:Number, dy:Number, dw:Number, dh:Number):void {}
	[JavaScriptMethod(name="drawImage")]
	/**
	*  @param canvas
	*  @param x
	*  @param y
	*/
	public function drawImage4(canvas:HTMLCanvasElement, x:Number, y:Number):void {}
	[JavaScriptMethod(name="drawImage")]
	/**
	*  @param canvas
	*  @param x
	*  @param y
	*  @param width
	*  @param height
	*/
	public function drawImage5(canvas:HTMLCanvasElement, x:Number, y:Number, width:Number, height:Number):void {}
	[JavaScriptMethod(name="drawImage")]
	/**
	*  @param canvas
	*  @param sx
	*  @param sy
	*  @param sw
	*  @param sh
	*  @param dx
	*  @param dy
	*  @param dw
	*  @param dh
	*/
	public function drawImage6(canvas:HTMLCanvasElement, sx:Number, sy:Number, sw:Number, sh:Number, dx:Number, dy:Number, dw:Number, dh:Number):void {}
	/**
	*  @param image
	*  @param sx (optional argument, default value is <code>undefined</code>)
	*  @param sy (optional argument, default value is <code>undefined</code>)
	*  @param sw (optional argument, default value is <code>undefined</code>)
	*  @param sh (optional argument, default value is <code>undefined</code>)
	*  @param dx (optional argument, default value is <code>undefined</code>)
	*  @param dy (optional argument, default value is <code>undefined</code>)
	*  @param dw (optional argument, default value is <code>undefined</code>)
	*  @param dh (optional argument, default value is <code>undefined</code>)
	*  @param compositeOperation (optional argument, default value is <code>undefined</code>)
	*/
	public function drawImageFromRect(image:HTMLImageElement, sx:Number=undefined, sy:Number=undefined, sw:Number=undefined, sh:Number=undefined, dx:Number=undefined, dy:Number=undefined, dw:Number=undefined, dh:Number=undefined, compositeOperation:String=undefined):void {}
	[JavaScriptMethod(name="setShadow")]
	/**
	*  @param width
	*  @param height
	*  @param blur
	*/
	public function setShadow1(width:Number, height:Number, blur:Number):void {}
	[JavaScriptMethod(name="setShadow")]
	/**
	*  @param width
	*  @param height
	*  @param blur
	*  @param color (optional argument, default value is <code>undefined</code>)
	*/
	public function setShadow2(width:Number, height:Number, blur:Number, color:String=undefined):void {}
	[JavaScriptMethod(name="setShadow")]
	/**
	*  @param width
	*  @param height
	*  @param blur
	*  @param color (optional argument, default value is <code>undefined</code>)
	*  @param alpha (optional argument, default value is <code>undefined</code>)
	*/
	public function setShadow3(width:Number, height:Number, blur:Number, color:String=undefined, alpha:Number=undefined):void {}
	[JavaScriptMethod(name="setShadow")]
	/**
	*  @param width
	*  @param height
	*  @param blur
	*  @param grayLevel
	*/
	public function setShadow4(width:Number, height:Number, blur:Number, grayLevel:Number):void {}
	[JavaScriptMethod(name="setShadow")]
	/**
	*  @param width
	*  @param height
	*  @param blur
	*  @param grayLevel
	*  @param alpha (optional argument, default value is <code>undefined</code>)
	*/
	public function setShadow5(width:Number, height:Number, blur:Number, grayLevel:Number, alpha:Number=undefined):void {}
	[JavaScriptMethod(name="setShadow")]
	/**
	*  @param width
	*  @param height
	*  @param blur
	*  @param r
	*  @param g
	*  @param b
	*  @param a
	*/
	public function setShadow6(width:Number, height:Number, blur:Number, r:Number, g:Number, b:Number, a:Number):void {}
	[JavaScriptMethod(name="setShadow")]
	/**
	*  @param width
	*  @param height
	*  @param blur
	*  @param c
	*  @param m
	*  @param y
	*  @param k
	*  @param a
	*/
	public function setShadow7(width:Number, height:Number, blur:Number, c:Number, m:Number, y:Number, k:Number, a:Number):void {}
	/**
	*  @param imagedata
	*  @param dx
	*  @param dy
	*  @param dirtyX
	*  @param dirtyY (optional argument, default value is <code>undefined</code>)
	*  @param dirtyWidth (optional argument, default value is <code>undefined</code>)
	*  @param dirtyHeight (optional argument, default value is <code>undefined</code>)
	*/
	public function putImageData(imagedata:ImageData, dx:Number, dy:Number, dirtyX:Number, dirtyY:Number=undefined, dirtyWidth:Number=undefined, dirtyHeight:Number=undefined):void {}
	[JavaScriptMethod(name="createPattern")]
	/**
	*  @param canvas
	*  @param repetitionType
	*  @return A <code>CanvasPattern</code> instance.
	*/
	public function createPattern1(canvas:HTMLCanvasElement, repetitionType:String):CanvasPattern { return undefined;}
	[JavaScriptMethod(name="createPattern")]
	/**
	*  @param image
	*  @param repetitionType
	*  @return A <code>CanvasPattern</code> instance.
	*/
	public function createPattern2(image:HTMLImageElement, repetitionType:String):CanvasPattern { return undefined;}
	[JavaScriptMethod(name="createImageData")]
	/**
	*  @param imagedata
	*  @return A <code>ImageData</code> instance.
	*/
	public function createImageData1(imagedata:ImageData):ImageData { return undefined;}
	[JavaScriptMethod(name="createImageData")]
	/**
	*  @param sw
	*  @param sh
	*  @return A <code>ImageData</code> instance.
	*/
	public function createImageData2(sw:Number, sh:Number):ImageData { return undefined;}

	public function get strokeStyle():Object { return undefined; }
	public function set strokeStyle(value:Object):void { }

	public function get fillStyle():Object { return undefined; }
	public function set fillStyle(value:Object):void { }
	/**
	*  @param sx (optional argument, default value is <code>undefined</code>)
	*  @param sy (optional argument, default value is <code>undefined</code>)
	*  @param sw (optional argument, default value is <code>undefined</code>)
	*  @param sh (optional argument, default value is <code>undefined</code>)
	*  @return A <code>ImageData</code> instance.
	*/
	public function getImageData(sx:Number=undefined, sy:Number=undefined, sw:Number=undefined, sh:Number=undefined):ImageData { return undefined;}
}

}