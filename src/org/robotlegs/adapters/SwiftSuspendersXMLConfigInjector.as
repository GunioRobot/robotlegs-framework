/*
 * Copyright (c) 2009 the original author or authors
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
 * THE SOFTWARE.
 */

package org.robotlegs.adapters
{
	
	/**
	 * SwiftSuspender <code>IInjector</code> adpater - See: <a href="http://github.com/tschneidereit/SwiftSuspenders">SwiftSuspenders</a>
	 *
	 * @author tschneidereit
	 */
	public class SwiftSuspendersXMLConfigInjector extends SwiftSuspendersInjector
	{
		protected static const XML_CONFIG:XML =
			<types>
				<type name='org.robotlegs.mvcs::Actor'>
					<field name='eventDispatcher'/>
				</type>
				<type name='org.robotlegs.mvcs::Command'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
					<field name='injector'/>
					<field name='mediatorMap'/>
				</type>
				<type name='org.robotlegs.mvcs::Mediator'>
					<field name='contextView'/>
					<field name='mediatorMap'/>
					<field name='eventDispatcher'/>
				</type>
			</types>;
		
		/**
		 * Create an XMLConfigInjector
		 *
		 * <p>The base configuration is:</p>
		 *
		 * <pre>
		 *   &lt;types&gt;
		 *     &lt;type name='org.robotlegs.mvcs::Actor'&gt;
		 *       &lt;field name='eventDispatcher'/&gt;
		 *     &lt;/type>
		 *     &lt;type name='org.robotlegs.mvcs::Command'&gt;
		 *       &lt;field name='contextView'/&gt;
		 *       &lt;field name='mediatorMap'/&gt;
		 *       &lt;field name='eventDispatcher'/&gt;
		 *       &lt;field name='injector'/&gt;
		 *       &lt;field name='mediatorMap'/&gt;
		 *     &lt;/type&gt;
		 *     &lt;type name='org.robotlegs.mvcs::Mediator'&gt;
		 *       &lt;field name='contextView'/&gt;
		 *       &lt;field name='mediatorMap'/&gt;
		 *       &lt;field name='eventDispatcher'/&gt;
		 *     &lt;/type&gt;
		 *   &lt;/types&gt;
		 * </pre>
		 *
		 * @param xmlConfig
		 */
		public function SwiftSuspendersXMLConfigInjector(xmlConfig:XML)
		{
			for each (var typeNode:XML in XML_CONFIG.children())
			{
				xmlConfig.appendChild(typeNode);
			}
			super(xmlConfig);
		}
	}
}