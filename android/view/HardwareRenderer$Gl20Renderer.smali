.class Landroid/view/HardwareRenderer$Gl20Renderer;
.super Landroid/view/HardwareRenderer$GlRenderer;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HardwareRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Gl20Renderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    }
.end annotation


# static fields
.field private static sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

.field private static final sPbufferLock:[Ljava/lang/Object;


# instance fields
.field private mGlCanvas:Landroid/view/GLES20Canvas;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 952
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Z)V
    .registers 3
    .parameter "translucent"

    .prologue
    .line 1001
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/HardwareRenderer$GlRenderer;-><init>(IZ)V

    .line 1002
    return-void
.end method

.method static synthetic access$000(Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 948
    invoke-static {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    return-void
.end method

.method static synthetic access$100()Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 1

    .prologue
    .line 948
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object v0
.end method

.method static synthetic access$102(Ljavax/microedition/khronos/egl/EGLSurface;)Ljavax/microedition/khronos/egl/EGLSurface;
    .registers 1
    .parameter "x0"

    .prologue
    .line 948
    sput-object p0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    return-object p0
.end method

.method static create(Z)Landroid/view/HardwareRenderer;
    .registers 2
    .parameter "translucent"

    .prologue
    .line 1136
    invoke-static {}, Landroid/view/GLES20Canvas;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1137
    new-instance v0, Landroid/view/HardwareRenderer$Gl20Renderer;

    invoke-direct {v0, p0}, Landroid/view/HardwareRenderer$Gl20Renderer;-><init>(Z)V

    .line 1139
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private static destroyHardwareLayer(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1093
    invoke-virtual {p0}, Landroid/view/View;->destroyLayer()Z

    .line 1095
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 1096
    check-cast v1, Landroid/view/ViewGroup;

    .line 1098
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1099
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 1100
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    .line 1099
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1103
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1b
    return-void
.end method

.method private static destroyResources(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1123
    invoke-virtual {p0}, Landroid/view/View;->destroyHardwareResources()V

    .line 1125
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1b

    move-object v1, p0

    .line 1126
    check-cast v1, Landroid/view/ViewGroup;

    .line 1128
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 1129
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_1b

    .line 1130
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    .line 1129
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1133
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_1b
    return-void
.end method

.method static trimMemory(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 1143
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    if-eqz v1, :cond_8

    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    if-nez v1, :cond_9

    .line 1164
    :cond_8
    :goto_8
    return-void

    .line 1145
    :cond_9
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    .line 1147
    .local v0, managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    if-eqz v0, :cond_8

    .line 1150
    invoke-virtual {v0}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v1

    invoke-static {v1}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1153
    sparse-switch p0, :sswitch_data_24

    goto :goto_8

    .line 1161
    :sswitch_1e
    const/4 v1, 0x2

    invoke-static {v1}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_8

    .line 1153
    nop

    :sswitch_data_24
    .sparse-switch
        0x14 -> :sswitch_1e
        0x28 -> :sswitch_1e
        0x3c -> :sswitch_1e
        0x50 -> :sswitch_1e
    .end sparse-switch
.end method

.method private static usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V
    .registers 6
    .parameter "eglContext"

    .prologue
    .line 1167
    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbufferLock:[Ljava/lang/Object;

    monitor-enter v1

    .line 1170
    :try_start_3
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    if-nez v0, :cond_19

    .line 1171
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v3, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglConfig:Ljavax/microedition/khronos/egl/EGLConfig;

    const/4 v4, 0x5

    new-array v4, v4, [I

    fill-array-data v4, :array_2a

    invoke-interface {v0, v2, v3, v4}, Ljavax/microedition/khronos/egl/EGL10;->eglCreatePbufferSurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;[I)Ljavax/microedition/khronos/egl/EGLSurface;

    move-result-object v0

    sput-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    .line 1175
    :cond_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_26

    .line 1176
    sget-object v0, Landroid/view/HardwareRenderer$Gl20Renderer;->sEgl:Ljavax/microedition/khronos/egl/EGL10;

    sget-object v1, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglDisplay:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Landroid/view/HardwareRenderer$Gl20Renderer;->sPbuffer:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v0, v1, v2, v3, p0}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    .line 1177
    return-void

    .line 1175
    :catchall_26
    move-exception v0

    :try_start_27
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v0

    .line 1171
    nop

    :array_2a
    .array-data 0x4
        0x57t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x56t 0x30t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x38t 0x30t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method canDraw()Z
    .registers 2

    .prologue
    .line 1032
    invoke-super {p0}, Landroid/view/HardwareRenderer$GlRenderer;->canDraw()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method createCanvas()Landroid/view/GLES20Canvas;
    .registers 3

    .prologue
    .line 1006
    new-instance v0, Landroid/view/GLES20Canvas;

    iget-boolean v1, p0, Landroid/view/HardwareRenderer$GlRenderer;->mTranslucent:Z

    invoke-direct {v0, v1}, Landroid/view/GLES20Canvas;-><init>(Z)V

    iput-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    return-object v0
.end method

.method createDisplayList()Landroid/view/DisplayList;
    .registers 2

    .prologue
    .line 1066
    new-instance v0, Landroid/view/GLES20DisplayList;

    invoke-direct {v0}, Landroid/view/GLES20DisplayList;-><init>()V

    return-object v0
.end method

.method createHardwareLayer(IIZ)Landroid/view/HardwareLayer;
    .registers 5
    .parameter "width"
    .parameter "height"
    .parameter "isOpaque"

    .prologue
    .line 1076
    new-instance v0, Landroid/view/GLES20RenderLayer;

    invoke-direct {v0, p1, p2, p3}, Landroid/view/GLES20RenderLayer;-><init>(IIZ)V

    return-object v0
.end method

.method createHardwareLayer(Z)Landroid/view/HardwareLayer;
    .registers 3
    .parameter "isOpaque"

    .prologue
    .line 1071
    new-instance v0, Landroid/view/GLES20TextureLayer;

    invoke-direct {v0, p1}, Landroid/view/GLES20TextureLayer;-><init>(Z)V

    return-object v0
.end method

.method createSurfaceTexture(Landroid/view/HardwareLayer;)Landroid/graphics/SurfaceTexture;
    .registers 3
    .parameter "layer"

    .prologue
    .line 1081
    check-cast p1, Landroid/view/GLES20TextureLayer;

    .end local p1
    invoke-virtual {p1}, Landroid/view/GLES20TextureLayer;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    return-object v0
.end method

.method destroy(Z)V
    .registers 5
    .parameter "full"

    .prologue
    const/4 v2, 0x0

    .line 1048
    :try_start_1
    invoke-super {p0, p1}, Landroid/view/HardwareRenderer$GlRenderer;->destroy(Z)V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_d

    .line 1050
    if-eqz p1, :cond_c

    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v0, :cond_c

    .line 1051
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    .line 1054
    :cond_c
    return-void

    .line 1050
    :catchall_d
    move-exception v0

    if-eqz p1, :cond_16

    iget-object v1, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    if-eqz v1, :cond_16

    .line 1051
    iput-object v2, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    :cond_16
    throw v0
.end method

.method destroyHardwareResources(Landroid/view/View;)V
    .registers 5
    .parameter "view"

    .prologue
    .line 1107
    if-eqz p1, :cond_1c

    .line 1108
    const/4 v1, 0x1

    .line 1109
    .local v1, needsContext:Z
    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->checkCurrent()I

    move-result v2

    if-eqz v2, :cond_10

    const/4 v1, 0x0

    .line 1111
    :cond_10
    if-eqz v1, :cond_24

    .line 1112
    sget-object v2, Landroid/view/HardwareRenderer$Gl20Renderer;->sEglContextStorage:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;

    .line 1113
    .local v0, managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    if-nez v0, :cond_1d

    .line 1120
    .end local v0           #managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    .end local v1           #needsContext:Z
    :cond_1c
    :goto_1c
    return-void

    .line 1114
    .restart local v0       #managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    .restart local v1       #needsContext:Z
    :cond_1d
    invoke-virtual {v0}, Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;->getContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v2

    invoke-static {v2}, Landroid/view/HardwareRenderer$Gl20Renderer;->usePbufferSurface(Ljavax/microedition/khronos/egl/EGLContext;)V

    .line 1117
    .end local v0           #managedContext:Landroid/view/HardwareRenderer$Gl20Renderer$Gl20RendererEglContext;
    :cond_24
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyResources(Landroid/view/View;)V

    .line 1118
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    goto :goto_1c
.end method

.method destroyLayers(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 1086
    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Landroid/view/HardwareRenderer$Gl20Renderer;->checkCurrent()I

    move-result v0

    if-eqz v0, :cond_15

    .line 1087
    invoke-static {p1}, Landroid/view/HardwareRenderer$Gl20Renderer;->destroyHardwareLayer(Landroid/view/View;)V

    .line 1088
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/GLES20Canvas;->flushCaches(I)V

    .line 1090
    :cond_15
    return-void
.end method

.method getConfig(Z)[I
    .registers 8
    .parameter "dirtyRegions"

    .prologue
    const/4 v5, 0x4

    const/4 v0, 0x0

    const/16 v4, 0x8

    .line 1011
    const/16 v1, 0x11

    new-array v1, v1, [I

    const/16 v2, 0x3040

    aput v2, v1, v0

    const/4 v2, 0x1

    aput v5, v1, v2

    const/4 v2, 0x2

    const/16 v3, 0x3024

    aput v3, v1, v2

    const/4 v2, 0x3

    aput v4, v1, v2

    const/16 v2, 0x3023

    aput v2, v1, v5

    const/4 v2, 0x5

    aput v4, v1, v2

    const/4 v2, 0x6

    const/16 v3, 0x3022

    aput v3, v1, v2

    const/4 v2, 0x7

    aput v4, v1, v2

    const/16 v2, 0x3021

    aput v2, v1, v4

    const/16 v2, 0x9

    aput v4, v1, v2

    const/16 v2, 0xa

    const/16 v3, 0x3025

    aput v3, v1, v2

    const/16 v2, 0xb

    aput v0, v1, v2

    const/16 v2, 0xc

    const/16 v3, 0x3026

    aput v3, v1, v2

    const/16 v2, 0xd

    aput v0, v1, v2

    const/16 v2, 0xe

    const/16 v3, 0x3033

    aput v3, v1, v2

    const/16 v2, 0xf

    if-eqz p1, :cond_4e

    const/16 v0, 0x400

    :cond_4e
    or-int/lit8 v0, v0, 0x4

    aput v0, v1, v2

    const/16 v0, 0x10

    const/16 v2, 0x3038

    aput v2, v1, v0

    return-object v1
.end method

.method initCaches()V
    .registers 1

    .prologue
    .line 1027
    invoke-static {}, Landroid/view/GLES20Canvas;->initCaches()V

    .line 1028
    return-void
.end method

.method onPostDraw()V
    .registers 2

    .prologue
    .line 1042
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0}, Landroid/view/GLES20Canvas;->onPostDraw()V

    .line 1043
    return-void
.end method

.method onPreDraw(Landroid/graphics/Rect;)V
    .registers 3
    .parameter "dirty"

    .prologue
    .line 1037
    iget-object v0, p0, Landroid/view/HardwareRenderer$Gl20Renderer;->mGlCanvas:Landroid/view/GLES20Canvas;

    invoke-virtual {v0, p1}, Landroid/view/GLES20Canvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 1038
    return-void
.end method

.method setup(II)V
    .registers 4
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1058
    invoke-super {p0, p1, p2}, Landroid/view/HardwareRenderer$GlRenderer;->setup(II)V

    .line 1059
    iget-boolean v0, p0, Landroid/view/HardwareRenderer$GlRenderer;->mVsyncDisabled:Z

    if-eqz v0, :cond_a

    .line 1060
    invoke-static {}, Landroid/view/GLES20Canvas;->disableVsync()V

    .line 1062
    :cond_a
    return-void
.end method
