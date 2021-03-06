
/*
===========================================================================

Doom 3 GPL Source Code
Copyright (C) 1999-2011 id Software LLC, a ZeniMax Media company.

This file is part of the Doom 3 GPL Source Code (?Doom 3 Source Code?).

Doom 3 Source Code is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Doom 3 Source Code is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Doom 3 Source Code.  If not, see <http://www.gnu.org/licenses/>.

In addition, the Doom 3 Source Code is also subject to certain additional terms. You should have received a copy of these additional terms immediately following the terms and conditions of the GNU General Public License which accompanied the Doom 3 Source Code.  If not, please request a copy in writing from id Software at the address below.

If you have questions concerning this license or the applicable additional terms, you may contact in writing id Software LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.

===========================================================================
*/
/*
** QGL.H
*/

#ifndef __QGL_H__
#define __QGL_H__

#define GL_GLEXT_PROTOTYPES

#if MACOS_X
#include <OpenGL/gl.h>
#include <OpenGL/glext.h>
#if !defined( GL_COLOR_INDEX8_EXT )
#define GL_COLOR_INDEX8_EXT 0x80E5
#endif
#if !defined( glColorTableEXT )
#define glColorTableEXT glColorTable
#endif
#if !defined( glDepthRangef )
#define glDepthRangef glDepthRange
#endif
#if !defined( glClearDepthf )
#define glClearDepthf glClearDepth
#endif
#if defined(GL_ES_VERSION_2_0)
#define GL_DEPTH_COMPONENT24_OES GL_DEPTH_COMPONENT24
#define GL_STENCIL_INDEX4_OES GL_STENCIL_INDEX
#define GL_COMPRESSED_RGB_PVRTC_4BPPV1_IMG 0x8C00
#define GL_COMPRESSED_RGB_PVRTC_2BPPV1_IMG 0x8C01
#define GL_COMPRESSED_RGBA_PVRTC_4BPPV1_IMG 0x8C02
#define GL_COMPRESSED_RGBA_PVRTC_2BPPV1_IMG 0x8C03
#endif
#define GL_APIENTRY
#else	// !MACOS_X
#ifdef __ANDROID__
#include <GLES2/gl2.h>
#include <GLES2/gl2ext.h>
#else	// !__ANDROID__
#include <GL/gl.h>
#include <GL/glext.h>
#include <GL/glx.h>
#define GL_APIENTRY	GLAPIENTRY
#endif	// __ANDROID__
#endif	// MACOS_X

#include "esUtil.h"

typedef void (*GLExtension_t)(void);

#if defined( __cplusplus )
extern "C" {
#endif

GLExtension_t GLimp_ExtensionPointer(const char *name);

#if defined( __cplusplus )
}
#endif

// GL_EXT_stencil_two_side
extern void (GL_APIENTRY *qglActiveStencilFaceEXT)(GLenum face);

// GL_ATI_separate_stencil
extern void (GL_APIENTRY *qglStencilOpSeparateATI)(GLenum face, GLenum sfail, GLenum dpfail, GLenum dppass);
extern void (GL_APIENTRY *qglStencilFuncSeparateATI)(GLenum frontfunc, GLenum backfunc, GLint ref, GLuint mask);

#if !defined(GL_ES_VERSION_2_0)
// GL_ARB_texture_compression + GL_S3_s3tc
extern void (GL_APIENTRY *qglCompressedTexImage2DARB)(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data);
extern void (GL_APIENTRY *qglGetCompressedTexImageARB)(GLenum target, GLint level, GLvoid *img);

// GL_EXT_depth_bounds_test
extern void (GL_APIENTRY *qglDepthBoundsEXT)(GLclampd zmin, GLclampd zmax);
#endif

#endif
