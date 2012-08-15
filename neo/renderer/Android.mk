#
# Doom 3 GPL Source Code
# Copyright (C) 1999-2011 id Software LLC, a ZeniMax Media company.
# Copyright (C) 2012 Havlena Petr <havlenapetr@gmail.com>
# 
# This file is part of the Doom 3 GPL Source Code (?Doom 3 Source Code?).
# 
# Doom 3 Source Code is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# Doom 3 Source Code is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with Doom 3 Source Code.  If not, see <http://www.gnu.org/licenses/>.

# In addition, the Doom 3 Source Code is also subject to certain additional
# terms. You should have received a copy of these # additional terms immediately
# following the terms and conditions of the GNU General Public License which
# accompanied the # Doom 3 Source Code.  If not, please request a copy in writing
# from id Software at the address below.
# 
# If you have questions concerning this license or the applicable additional
# terms, you may contact in writing:
# id Software # LLC, c/o ZeniMax Media Inc., Suite 120, Rockville, Maryland 20850 USA.
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_CFLAGS := $(GLOBAL_CFLAGS)

ifeq ($(ETC1_PRESENTED),true)
LOCAL_CFLAGS += -DID_ETC1_PRESENTED
endif

LOCAL_CPPFLAGS := -fexceptions -frtti

LOCAL_C_INCLUDES := \
    $(JPEG_INCLUDE_DIR) \
    $(ETC1_INCLUDE_DIR)

LOCAL_ARM_MODE := arm

LOCAL_SRC_FILES := \
    Cinematic.cpp \
    Model_liquid.cpp \
    tr_deform.cpp \
    Model_lwo.cpp \
    tr_font.cpp \
    draw_common.cpp \
    Model_ma.cpp \
    tr_guisurf.cpp \
    ModelManager.cpp \
    tr_light.cpp \
    GuiModel.cpp \
    Model_md3.cpp \
    tr_lightrun.cpp \
    Image_files.cpp \
    Model_md5.cpp \
    tr_main.cpp \
    Image_init.cpp \
    ModelOverlay.cpp \
    tr_orderIndexes.cpp \
    Image_load.cpp \
    Model_prt.cpp \
    tr_polytope.cpp \
    Image_process.cpp \
    Model_sprite.cpp \
    tr_render.cpp \
    Image_program.cpp \
    RenderEntity.cpp \
    tr_rendertools.cpp \
    Interaction.cpp \
    RenderSystem.cpp \
    tr_shadowbounds.cpp \
    Material.cpp \
    RenderSystem_init.cpp \
    tr_stencilshadow.cpp \
    RenderWorld.cpp \
    tr_subview.cpp \
    Model_ase.cpp \
    RenderWorld_demo.cpp \
    tr_trace.cpp \
    Model_beam.cpp \
    RenderWorld_load.cpp \
    tr_trisurf.cpp \
    Model.cpp \
    RenderWorld_portals.cpp \
    tr_turboshadow.cpp \
    ModelDecal.cpp \
    tr_backend.cpp \
    VertexCache.cpp \
    esTransform.c \
    draw_glsl.cpp

LOCAL_MODULE := librenderer

include $(BUILD_STATIC_LIBRARY)
