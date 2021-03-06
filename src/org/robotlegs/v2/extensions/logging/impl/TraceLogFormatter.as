//------------------------------------------------------------------------------
//  Copyright (c) 2011 the original author or authors. All Rights Reserved. 
// 
//  NOTICE: You are permitted to use, modify, and distribute this file 
//  in accordance with the terms of the license agreement accompanying it. 
//------------------------------------------------------------------------------

package org.robotlegs.v2.extensions.logging.impl
{
	import flash.utils.getTimer;
	import org.robotlegs.v2.core.api.ContextLogLevel;
	import org.robotlegs.v2.core.api.IContext;
	import org.robotlegs.v2.extensions.logging.api.IContextLogFormatter;

	public class TraceLogFormatter implements IContextLogFormatter
	{
		private const startedAt:Number = new Date().time + getTimer();

		public function format(
			context:IContext,
			source:Object,
			level:uint,
			timestamp:int,
			message:*,
			parameters:Array = null):String
		{
			return (startedAt + timestamp)
				+ ' ' + ContextLogLevel.getName(level)
				+ ' - ' + context + '|' + source
				+ ' - ' + message
				+ (parameters ? ' - ' + parameters : '');
		}
	}
}
