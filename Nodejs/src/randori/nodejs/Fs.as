/***
 * Copyright 2013 LTN Consulting, Inc. /dba Digital PrimatesÂ®
 * 
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * 
 * !!!! THIS IS A GENERATED FILE, DO NOT MAKE ANY CHANGES TO IT MANUALLY !!!!
 * @author Randori Nodejs generator
*/
package randori.nodejs {
	
	
	/**
	 * Generated from file: fs.json
	 */
	[JavaScript(export="false", name="fs")]
	public class Fs {
		
		/**
		 * <p><code>WriteStream</code> is a <a href="stream.html#stream_writable_stream">Writable Stream</a>.
		 * </p>
		 * 
		 */
		public static var WriteStream:WritableStream;
		
		/**
		 * <p>Asynchronous rename(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function rename(oldPath:*, newPath:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous rename(2).
		 * </p>
		 * 
		 */
		public static function renameSync(oldPath:*, newPath:*):void {
		}
		
		/**
		 * <p>Asynchronous ftruncate(2). No arguments other than a possible exception are
		 * given to the completion callback.
		 * </p>
		 * 
		 */
		public static function truncate(fd:*, len:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous ftruncate(2).
		 * </p>
		 * 
		 */
		public static function truncateSync(fd:*, len:*):void {
		}
		
		/**
		 * <p>Asynchronous chown(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function chown(path:*, uid:*, gid:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous chown(2).
		 * </p>
		 * 
		 */
		public static function chownSync(path:*, uid:*, gid:*):void {
		}
		
		/**
		 * <p>Asynchronous fchown(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function fchown(fd:*, uid:*, gid:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous fchown(2).
		 * </p>
		 * 
		 */
		public static function fchownSync(fd:*, uid:*, gid:*):void {
		}
		
		/**
		 * <p>Asynchronous lchown(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function lchown(path:*, uid:*, gid:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous lchown(2).
		 * </p>
		 * 
		 */
		public static function lchownSync(path:*, uid:*, gid:*):void {
		}
		
		/**
		 * <p>Asynchronous chmod(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function chmod(path:*, mode:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous chmod(2).
		 * </p>
		 * 
		 */
		public static function chmodSync(path:*, mode:*):void {
		}
		
		/**
		 * <p>Asynchronous fchmod(2). No arguments other than a possible exception
		 * are given to the completion callback.
		 * </p>
		 * 
		 */
		public static function fchmod(fd:*, mode:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous fchmod(2).
		 * </p>
		 * 
		 */
		public static function fchmodSync(fd:*, mode:*):void {
		}
		
		/**
		 * <p>Asynchronous lchmod(2). No arguments other than a possible exception
		 * are given to the completion callback.
		 * </p>
		 * <p>Only available on Mac OS X.
		 * </p>
		 * 
		 */
		public static function lchmod(path:*, mode:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous lchmod(2).
		 * </p>
		 * 
		 */
		public static function lchmodSync(path:*, mode:*):void {
		}
		
		/**
		 * <p>Asynchronous stat(2). The callback gets two arguments <code>(err, stats)</code> where
		 * <code>stats</code> is a <a href="#fs_class_fs_stats">fs.Stats</a> object.  See the <a href="#fs_class_fs_stats">fs.Stats</a>
		 * section below for more information.
		 * </p>
		 * 
		 */
		public static function stat(path:*, callback:*):void {
		}
		
		/**
		 * <p>Asynchronous lstat(2). The callback gets two arguments <code>(err, stats)</code> where
		 * <code>stats</code> is a <code>fs.Stats</code> object. <code>lstat()</code> is identical to <code>stat()</code>, except that if
		 * <code>path</code> is a symbolic link, then the link itself is stat-ed, not the file that it
		 * refers to.
		 * </p>
		 * 
		 */
		public static function lstat(path:*, callback:*):void {
		}
		
		/**
		 * <p>Asynchronous fstat(2). The callback gets two arguments <code>(err, stats)</code> where
		 * <code>stats</code> is a <code>fs.Stats</code> object. <code>fstat()</code> is identical to <code>stat()</code>, except that
		 * the file to be stat-ed is specified by the file descriptor <code>fd</code>.
		 * </p>
		 * 
		 */
		public static function fstat(fd:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous stat(2). Returns an instance of <code>fs.Stats</code>.
		 * </p>
		 * 
		 */
		public static function statSync(path:*):void {
		}
		
		/**
		 * <p>Synchronous lstat(2). Returns an instance of <code>fs.Stats</code>.
		 * </p>
		 * 
		 */
		public static function lstatSync(path:*):void {
		}
		
		/**
		 * <p>Synchronous fstat(2). Returns an instance of <code>fs.Stats</code>.
		 * </p>
		 * 
		 */
		public static function fstatSync(fd:*):void {
		}
		
		/**
		 * <p>Asynchronous link(2). No arguments other than a possible exception are given to
		 * the completion callback.
		 * </p>
		 * 
		 */
		public static function link(srcpath:*, dstpath:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous link(2).
		 * </p>
		 * 
		 */
		public static function linkSync(srcpath:*, dstpath:*):void {
		}
		
		/**
		 * <p>Asynchronous symlink(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * <code>type</code> argument can be either <code>&#39;dir&#39;</code>, <code>&#39;file&#39;</code>, or <code>&#39;junction&#39;</code> (default is <code>&#39;file&#39;</code>).  It is only
		 * used on Windows (ignored on other platforms).
		 * Note that Windows junction points require the destination path to be absolute.  When using
		 * <code>&#39;junction&#39;</code>, the <code>destination</code> argument will automatically be normalized to absolute path.
		 * </p>
		 * 
		 */
		public static function symlink(srcpath:*, dstpath:*, type:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous symlink(2).
		 * </p>
		 * 
		 */
		public static function symlinkSync(srcpath:*, dstpath:*, type:*):void {
		}
		
		/**
		 * <p>Asynchronous readlink(2). The callback gets two arguments <code>(err,
		 * linkString)</code>.
		 * </p>
		 * 
		 */
		public static function readlink(path:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous readlink(2). Returns the symbolic link&#39;s string value.
		 * </p>
		 * 
		 */
		public static function readlinkSync(path:*):void {
		}
		
		/**
		 * <p>Asynchronous realpath(2). The <code>callback</code> gets two arguments <code>(err,
		 * resolvedPath)</code>. May use <code>process.cwd</code> to resolve relative paths. <code>cache</code> is an
		 * object literal of mapped paths that can be used to force a specific path
		 * resolution or avoid additional <code>fs.stat</code> calls for known real paths.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>var cache = {&#39;/etc&#39;:&#39;/private/etc&#39;};
		 * fs.realpath(&#39;/etc/passwd&#39;, cache, function (err, resolvedPath) {
		 * if (err) throw err;
		 * console.log(resolvedPath);
		 * });</code></pre>
		 * 
		 */
		public static function realpath(path:*, cache:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous realpath(2). Returns the resolved path.
		 * </p>
		 * 
		 */
		public static function realpathSync(path:*, cache:*):void {
		}
		
		/**
		 * <p>Asynchronous unlink(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function unlink(path:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous unlink(2).
		 * </p>
		 * 
		 */
		public static function unlinkSync(path:*):void {
		}
		
		/**
		 * <p>Asynchronous rmdir(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function rmdir(path:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous rmdir(2).
		 * </p>
		 * 
		 */
		public static function rmdirSync(path:*):void {
		}
		
		/**
		 * <p>Asynchronous mkdir(2). No arguments other than a possible exception are given
		 * to the completion callback. <code>mode</code> defaults to <code>0777</code>.
		 * </p>
		 * 
		 */
		public static function mkdir(path:*, mode:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous mkdir(2).
		 * </p>
		 * 
		 */
		public static function mkdirSync(path:*, mode:*):void {
		}
		
		/**
		 * <p>Asynchronous readdir(3).  Reads the contents of a directory.
		 * The callback gets two arguments <code>(err, files)</code> where <code>files</code> is an array of
		 * the names of the files in the directory excluding <code>&#39;.&#39;</code> and <code>&#39;..&#39;</code>.
		 * </p>
		 * 
		 */
		public static function readdir(path:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous readdir(3). Returns an array of filenames excluding <code>&#39;.&#39;</code> and
		 * <code>&#39;..&#39;</code>.
		 * </p>
		 * 
		 */
		public static function readdirSync(path:*):void {
		}
		
		/**
		 * <p>Asynchronous close(2).  No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function close(fd:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous close(2).
		 * </p>
		 * 
		 */
		public static function closeSync(fd:*):void {
		}
		
		/**
		 * <p>Asynchronous file open. See open(2). <code>flags</code> can be:
		 * </p>
		 * <ul>
		 * <li><p><code>&#39;r&#39;</code> - Open file for reading.
		 * An exception occurs if the file does not exist.</p>
		 * </li>
		 * <li><p><code>&#39;r+&#39;</code> - Open file for reading and writing.
		 * An exception occurs if the file does not exist.</p>
		 * </li>
		 * <li><p><code>&#39;rs&#39;</code> - Open file for reading in synchronous mode. Instructs the operating
		 * system to bypass the local file system cache.</p>
		 * <p>This is primarily useful for opening files on NFS mounts as it allows you to
		 * skip the potentially stale local cache. It has a very real impact on I/O
		 * performance so don&#39;t use this mode unless you need it.</p>
		 * <p>Note that this doesn&#39;t turn <code>fs.open()</code> into a synchronous blocking call.
		 * If that&#39;s what you want then you should be using <code>fs.openSync()</code></p>
		 * </li>
		 * <li><p><code>&#39;rs+&#39;</code> - Open file for reading and writing, telling the OS to open it
		 * synchronously. See notes for <code>&#39;rs&#39;</code> about using this with caution.</p>
		 * </li>
		 * <li><p><code>&#39;w&#39;</code> - Open file for writing.
		 * The file is created (if it does not exist) or truncated (if it exists).</p>
		 * </li>
		 * <li><p><code>&#39;wx&#39;</code> - Like <code>&#39;w&#39;</code> but opens the file in exclusive mode.</p>
		 * </li>
		 * <li><p><code>&#39;w+&#39;</code> - Open file for reading and writing.
		 * The file is created (if it does not exist) or truncated (if it exists).</p>
		 * </li>
		 * <li><p><code>&#39;wx+&#39;</code> - Like <code>&#39;w+&#39;</code> but opens the file in exclusive mode.</p>
		 * </li>
		 * <li><p><code>&#39;a&#39;</code> - Open file for appending.
		 * The file is created if it does not exist.</p>
		 * </li>
		 * <li><p><code>&#39;ax&#39;</code> - Like <code>&#39;a&#39;</code> but opens the file in exclusive mode.</p>
		 * </li>
		 * <li><p><code>&#39;a+&#39;</code> - Open file for reading and appending.
		 * The file is created if it does not exist.</p>
		 * </li>
		 * <li><p><code>&#39;ax+&#39;</code> - Like <code>&#39;a+&#39;</code> but opens the file in exclusive mode.</p>
		 * </li>
		 * </ul>
		 * <p><code>mode</code> defaults to <code>0666</code>. The callback gets two arguments <code>(err, fd)</code>.
		 * </p>
		 * <p>Exclusive mode (<code>O_EXCL</code>) ensures that <code>path</code> is newly created. <code>fs.open()</code>
		 * fails if a file by that name already exists. On POSIX systems, symlinks are
		 * not followed. Exclusive mode may or may not work with network file systems.
		 * </p>
		 * 
		 */
		public static function open(path:*, flags:*, mode:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous open(2).
		 * </p>
		 * 
		 */
		public static function openSync(path:*, flags:*, mode:*):void {
		}
		
		/**
		 * <p>Change file timestamps of the file referenced by the supplied path.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="utimes")]
		public static function utimes1(path:*, atime:*, mtime:*):void {
		}
		
		/**
		 * <p>Change file timestamps of the file referenced by the supplied path.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="utimes")]
		public static function utimes2(path:*, atime:*, mtime:*, callback:*):void {
		}
		
		/**
		 * <p>Change file timestamps of the file referenced by the supplied path.
		 * </p>
		 * 
		 */
		public static function utimesSync(path:*, atime:*, mtime:*):void {
		}
		
		/**
		 * <p>Change the file timestamps of a file referenced by the supplied file
		 * descriptor.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="futimes")]
		public static function futimes1(fd:*, atime:*, mtime:*):void {
		}
		
		/**
		 * <p>Change the file timestamps of a file referenced by the supplied file
		 * descriptor.
		 * </p>
		 * 
		 */
		[JavaScriptMethod(name="futimes")]
		public static function futimes2(fd:*, atime:*, mtime:*, callback:*):void {
		}
		
		/**
		 * <p>Change the file timestamps of a file referenced by the supplied file
		 * descriptor.
		 * </p>
		 * 
		 */
		public static function futimesSync(fd:*, atime:*, mtime:*):void {
		}
		
		/**
		 * <p>Asynchronous fsync(2). No arguments other than a possible exception are given
		 * to the completion callback.
		 * </p>
		 * 
		 */
		public static function fsync(fd:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous fsync(2).
		 * </p>
		 * 
		 */
		public static function fsyncSync(fd:*):void {
		}
		
		/**
		 * <p>Write <code>buffer</code> to the file specified by <code>fd</code>.
		 * </p>
		 * <p><code>offset</code> and <code>length</code> determine the part of the buffer to be written.
		 * </p>
		 * <p><code>position</code> refers to the offset from the beginning of the file where this data
		 * should be written. If <code>position</code> is <code>null</code>, the data will be written at the
		 * current position.
		 * See pwrite(2).
		 * </p>
		 * <p>The callback will be given three arguments <code>(err, written, buffer)</code> where <code>written</code>
		 * specifies how many <em>bytes</em> were written from <code>buffer</code>.
		 * </p>
		 * <p>Note that it is unsafe to use <code>fs.write</code> multiple times on the same file
		 * without waiting for the callback. For this scenario,
		 * <code>fs.createWriteStream</code> is strongly recommended.
		 * </p>
		 * 
		 */
		public static function write(fd:*, buffer:*, offset:*, length:*, position:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous version of <code>fs.write()</code>. Returns the number of bytes written.
		 * </p>
		 * 
		 */
		public static function writeSync(fd:*, buffer:*, offset:*, length:*, position:*):void {
		}
		
		/**
		 * <p>Read data from the file specified by <code>fd</code>.
		 * </p>
		 * <p><code>buffer</code> is the buffer that the data will be written to.
		 * </p>
		 * <p><code>offset</code> is offset within the buffer where reading will start.
		 * </p>
		 * <p><code>length</code> is an integer specifying the number of bytes to read.
		 * </p>
		 * <p><code>position</code> is an integer specifying where to begin reading from in the file.
		 * If <code>position</code> is <code>null</code>, data will be read from the current file position.
		 * </p>
		 * <p>The callback is given the three arguments, <code>(err, bytesRead, buffer)</code>.
		 * </p>
		 * 
		 */
		public static function read(fd:*, buffer:*, offset:*, length:*, position:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous version of <code>fs.read</code>. Returns the number of <code>bytesRead</code>.
		 * </p>
		 * 
		 */
		public static function readSync(fd:*, buffer:*, offset:*, length:*, position:*):void {
		}
		
		/**
		 * <p>Asynchronously reads the entire contents of a file. Example:
		 * </p>
		 * <pre><code>fs.readFile(&#39;/etc/passwd&#39;, function (err, data) {
		 * if (err) throw err;
		 * console.log(data);
		 * });</code></pre>
		 * <p>The callback is passed two arguments <code>(err, data)</code>, where <code>data</code> is the
		 * contents of the file.
		 * </p>
		 * <p>If no encoding is specified, then the raw buffer is returned.
		 * </p>
		 * 
		 */
		public static function readFile(filename:*, encoding:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous version of <code>fs.readFile</code>. Returns the contents of the <code>filename</code>.
		 * </p>
		 * <p>If <code>encoding</code> is specified then this function returns a string. Otherwise it
		 * returns a buffer.
		 * </p>
		 * 
		 */
		public static function readFileSync(filename:*, encoding:*):void {
		}
		
		/**
		 * <p>Asynchronously writes data to a file, replacing the file if it already exists.
		 * <code>data</code> can be a string or a buffer. The <code>encoding</code> argument is ignored if
		 * <code>data</code> is a buffer. It defaults to <code>&#39;utf8&#39;</code>.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>fs.writeFile(&#39;message.txt&#39;, &#39;Hello Node&#39;, function (err) {
		 * if (err) throw err;
		 * console.log(&#39;It\&#39;s saved!&#39;);
		 * });</code></pre>
		 * 
		 */
		public static function writeFile(filename:*, data:*, encoding:*, callback:*):void {
		}
		
		/**
		 * <p>The synchronous version of <code>fs.writeFile</code>.
		 * </p>
		 * 
		 */
		public static function writeFileSync(filename:*, data:*, encoding:*):void {
		}
		
		/**
		 * <p>Asynchronously append data to a file, creating the file if it not yet exists.
		 * <code>data</code> can be a string or a buffer. The <code>encoding</code> argument is ignored if
		 * <code>data</code> is a buffer.
		 * </p>
		 * <p>Example:
		 * </p>
		 * <pre><code>fs.appendFile(&#39;message.txt&#39;, &#39;data to append&#39;, function (err) {
		 * if (err) throw err;
		 * console.log(&#39;The &quot;data to append&quot; was appended to file!&#39;);
		 * });</code></pre>
		 * 
		 */
		public static function appendFile(filename:*, data:*, encoding:*, callback:*):void {
		}
		
		/**
		 * <p>The synchronous version of <code>fs.appendFile</code>.
		 * </p>
		 * 
		 */
		public static function appendFileSync(filename:*, data:*, encoding:*):void {
		}
		
		/**
		 * <p>Watch for changes on <code>filename</code>. The callback <code>listener</code> will be called each
		 * time the file is accessed.
		 * </p>
		 * <p>The second argument is optional. The <code>options</code> if provided should be an object
		 * containing two members a boolean, <code>persistent</code>, and <code>interval</code>. <code>persistent</code>
		 * indicates whether the process should continue to run as long as files are
		 * being watched. <code>interval</code> indicates how often the target should be polled,
		 * in milliseconds. The default is <code>{ persistent: true, interval: 5007 }</code>.
		 * </p>
		 * <p>The <code>listener</code> gets two arguments the current stat object and the previous
		 * stat object:
		 * </p>
		 * <pre><code>fs.watchFile(&#39;message.text&#39;, function (curr, prev) {
		 * console.log(&#39;the current mtime is: &#39; + curr.mtime);
		 * console.log(&#39;the previous mtime was: &#39; + prev.mtime);
		 * });</code></pre>
		 * <p>These stat objects are instances of <code>fs.Stat</code>.
		 * </p>
		 * <p>If you want to be notified when the file was modified, not just accessed
		 * you need to compare <code>curr.mtime</code> and <code>prev.mtime</code>.
		 * </p>
		 * 
		 */
		public static function watchFile(filename:*, options:*, listener:*):void {
		}
		
		/**
		 * <p>Stop watching for changes on <code>filename</code>. If <code>listener</code> is specified, only that
		 * particular listener is removed. Otherwise, <em>all</em> listeners are removed and you
		 * have effectively stopped watching <code>filename</code>.
		 * </p>
		 * <p>Calling <code>fs.unwatchFile()</code> with a filename that is not being watched is a
		 * no-op, not an error.
		 * </p>
		 * 
		 */
		public static function unwatchFile(filename:*, listener:*):void {
		}
		
		/**
		 * <p>Watch for changes on <code>filename</code>, where <code>filename</code> is either a file or a
		 * directory.  The returned object is a <a href="#fs_class_fs_fswatcher">fs.FSWatcher</a>.
		 * </p>
		 * <p>The second argument is optional. The <code>options</code> if provided should be an object
		 * containing a boolean member <code>persistent</code>, which indicates whether the process
		 * should continue to run as long as files are being watched. The default is
		 * <code>{ persistent: true }</code>.
		 * </p>
		 * <p>The listener callback gets two arguments <code>(event, filename)</code>.  <code>event</code> is either
		 * &#39;rename&#39; or &#39;change&#39;, and <code>filename</code> is the name of the file which triggered
		 * the event.
		 * </p>
		 * 
		 */
		public static function watch(filename:*, options:*, listener:*):void {
		}
		
		/**
		 * <p>Test whether or not the given path exists by checking with the file system.
		 * Then call the <code>callback</code> argument with either true or false.  Example:
		 * </p>
		 * <pre><code>fs.exists(&#39;/etc/passwd&#39;, function (exists) {
		 * util.debug(exists ? &quot;it&#39;s there&quot; : &quot;no passwd!&quot;);
		 * });</code></pre>
		 * 
		 */
		public static function exists(path:*, callback:*):void {
		}
		
		/**
		 * <p>Synchronous version of <code>fs.exists</code>.
		 * </p>
		 * 
		 */
		public static function existsSync(path:*):void {
		}
		
		/**
		 * <p>Returns a new ReadStream object (See <code>Readable Stream</code>).
		 * </p>
		 * <p><code>options</code> is an object with the following defaults:
		 * </p>
		 * <pre><code>{ flags: &#39;r&#39;,
		 * encoding: null,
		 * fd: null,
		 * mode: 0666,
		 * bufferSize: 64 * 1024
		 * }</code></pre>
		 * <p><code>options</code> can include <code>start</code> and <code>end</code> values to read a range of bytes from
		 * the file instead of the entire file.  Both <code>start</code> and <code>end</code> are inclusive and
		 * start at 0. The <code>encoding</code> can be <code>&#39;utf8&#39;</code>, <code>&#39;ascii&#39;</code>, or <code>&#39;base64&#39;</code>.
		 * </p>
		 * <p>An example to read the last 10 bytes of a file which is 100 bytes long:
		 * </p>
		 * <pre><code>fs.createReadStream(&#39;sample.txt&#39;, {start: 90, end: 99});</code></pre>
		 * 
		 */
		public static function createReadStream(path:*, options:*):void {
		}
		
		/**
		 * <p>Returns a new WriteStream object (See <code>Writable Stream</code>).
		 * </p>
		 * <p><code>options</code> is an object with the following defaults:
		 * </p>
		 * <pre><code>{ flags: &#39;w&#39;,
		 * encoding: null,
		 * mode: 0666 }</code></pre>
		 * <p><code>options</code> may also include a <code>start</code> option to allow writing data at
		 * some position past the beginning of the file.  Modifying a file rather
		 * than replacing it may require a <code>flags</code> mode of <code>r+</code> rather than the
		 * default mode <code>w</code>.
		 * </p>
		 * 
		 */
		public static function createWriteStream(path:*, options:*):void {
		}
		
		public function utimes(...params):* {
			return null;
		}
		
		public function futimes(...params):* {
			return null;
		}
	}
}
