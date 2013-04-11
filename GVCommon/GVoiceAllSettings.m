/*
 Copyright (c) 2011, Joey Gibson <joey@joeygibson.com>
 All rights reserved.
 
 Redistribution and use in source and binary forms, with or without modification, 
 are permitted provided that the following conditions are met:
 
 * Redistributions of source code must retain the above copyright notice, 
 this list of conditions and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, 
 this list of conditions and the following disclaimer in the documentation 
 and/or other materials provided with the distribution.
 * Neither the name of the author nor the names of its contributors may be 
 used to endorse or promote products derived from this software without 
 specific prior written permission.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" 
 AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE 
 IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF 
 SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN 
 CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF
 THE POSSIBILITY OF SUCH DAMAGE.
 */

#import "GVoiceAllSettings.h"

@implementation GVoiceAllSettings

@synthesize phoneList = _phoneList;
@synthesize phones = _phones;
@synthesize settings = _settings;

#pragma mark - Init Methods
- (id) initWithDictionary: (NSDictionary *) dict {
	self = [super init];
	
	if (self) {
		self.phoneList = [dict objectForKey: @"phoneList"];
		self.phones = [dict objectForKey: @"phones"];
		
		GVoiceSettings *settings = [[GVoiceSettings alloc] initWithDictionary: [dict objectForKey: @"settings"]];
		self.settings = settings;
		
		[settings release];
	}
	
	return self;
}

#pragma mark - Life Cycle Methods
- (void)dealloc {	
    [_phoneList release], _phoneList = nil;
    [_phones release], _phones = nil;
    [_settings release], _settings = nil;
	
	[super dealloc];
}
@end