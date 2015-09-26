/*
 * MessagePack for C
 *
 * Copyright (C) 2008-2009 FURUHASHI Sadayuki
 *
 *    Licensed under the Apache License, Version 2.0 (the "License");
 *    you may not use this file except in compliance with the License.
 *    You may obtain a copy of the License at
 *
 *        http://www.apache.org/licenses/LICENSE-2.0
 *
 *    Unless required by applicable law or agreed to in writing, software
 *    distributed under the License is distributed on an "AS IS" BASIS,
 *    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 *    See the License for the specific language governing permissions and
 *    limitations under the License.
 */
/**
 * @defgroup msgpack MessagePack C
 * @{
 * @}
 */

#if defined(_USRDLL)
#define LUA_EXTENSIONS_DLL     __declspec(dllexport)
#else         /* use a DLL library */
#define LUA_EXTENSIONS_DLL
#endif

#include "msgpack/object.h"
#include "msgpack/zone.h"
#include "msgpack/pack.h"
#include "msgpack/unpack.h"
#include "msgpack/sbuffer.h"
#include "msgpack/vrefbuffer.h"
#include "msgpack/version.h"

#if __cplusplus
extern "C" {
#endif
    
#include "lauxlib.h"
    
    void LUA_EXTENSIONS_DLL luaopen_msgpackorig(lua_State *L);
    
#if __cplusplus
}
#endif
