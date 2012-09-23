.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_PRIORITY_DIED:I = 0xc8

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field private static final CAMERA_MSG_ALL_MSGS:I = 0x4ff

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final TAG:Ljava/lang/String; = "Camera"


# instance fields
.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mNativeContext:I

.field private mOneShot:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;


# direct methods
.method constructor <init>(II)V
    .registers 6
    .parameter "cameraId"
    .parameter "priority"

    .prologue
    const/4 v2, 0x0

    .line 327
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 328
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 329
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 330
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 331
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 332
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 333
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 336
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_29

    .line 337
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 344
    :goto_20
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, p2}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;II)V

    .line 345
    return-void

    .line 338
    :cond_29
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_37

    .line 339
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_20

    .line 341
    :cond_37
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_20
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 133
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    return-void
.end method

.method static synthetic access$1302(Landroid/hardware/Camera;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-boolean p1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    return p1
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 133
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 133
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .registers 6
    .parameter "callbackBuffer"
    .parameter "msgType"

    .prologue
    .line 691
    const/16 v0, 0x10

    if-eq p2, v0, :cond_21

    const/16 v0, 0x80

    if-eq p2, v0, :cond_21

    .line 693
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 697
    :cond_21
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 698
    return-void
.end method

.method public static checkCameraEnabled()Z
    .registers 5

    .prologue
    .line 247
    const/4 v1, 0x1

    .line 249
    .local v1, enabled:Z
    :try_start_1
    const-string/jumbo v3, "restriction_policy"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v2

    .line 251
    .local v2, rp:Landroid/app/enterprise/IRestrictionPolicy;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/enterprise/IRestrictionPolicy;->isCameraEnabled(Z)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_10} :catch_38

    move-result v1

    .line 257
    .end local v2           #rp:Landroid/app/enterprise/IRestrictionPolicy;
    :goto_11
    if-nez v1, :cond_37

    .line 259
    const-string v3, "Camera"

    const-string v4, "CAMERA IS DISABLED"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const/16 v4, 0x2710

    if-ge v3, v4, :cond_2b

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    const v4, 0x1869f

    if-gt v3, v4, :cond_37

    .line 263
    :cond_2b
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcess(I)V

    .line 264
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/System;->exit(I)V

    .line 268
    :cond_37
    return v1

    .line 253
    :catch_38
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public static native getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method public static native getNumberOfCameras()I
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;II)V
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .registers 5

    .prologue
    .line 314
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 316
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 317
    .local v2, numberOfCameras:I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 318
    .local v0, cameraInfo:Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_d
    if-ge v1, v2, :cond_21

    .line 319
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 320
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1e

    .line 321
    new-instance v3, Landroid/hardware/Camera;

    const/16 v4, 0x64

    invoke-direct {v3, v1, v4}, Landroid/hardware/Camera;-><init>(II)V

    .line 324
    :goto_1d
    return-object v3

    .line 318
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 324
    :cond_21
    const/4 v3, 0x0

    goto :goto_1d
.end method

.method public static open(I)Landroid/hardware/Camera;
    .registers 3
    .parameter "cameraId"

    .prologue
    .line 301
    invoke-static {}, Landroid/hardware/Camera;->checkCameraEnabled()Z

    .line 303
    new-instance v0, Landroid/hardware/Camera;

    const/16 v1, 0x64

    invoke-direct {v0, p0, v1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .registers 8
    .parameter "camera_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 798
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 799
    .local v0, c:Landroid/hardware/Camera;
    if-nez v0, :cond_b

    .line 806
    :cond_a
    :goto_a
    return-void

    .line 802
    :cond_b
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_a

    .line 803
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 804
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_a
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewDisplay(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .registers 3
    .parameter "callbackBuffer"

    .prologue
    .line 642
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 643
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .registers 3
    .parameter "callbackBuffer"

    .prologue
    .line 685
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 686
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 879
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 880
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    .line 881
    return-void
.end method

.method public final cancelAutoFocus()V
    .registers 2

    .prologue
    .line 894
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 895
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 896
    return-void
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 348
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 349
    return-void
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .registers 4

    .prologue
    .line 1360
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 1361
    .local v0, p:Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 1362
    .local v1, s:Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 1363
    return-object v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .registers 2

    .prologue
    .line 361
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 362
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 363
    return-void
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .registers 2
    .parameter "cb"

    .prologue
    .line 1335
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 1336
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1137
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1138
    return-void
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 577
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 578
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 579
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 580
    if-eqz p1, :cond_e

    :goto_a
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 581
    return-void

    :cond_e
    move v0, v1

    .line 580
    goto :goto_a
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .registers 3
    .parameter "params"

    .prologue
    .line 1349
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 1350
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    const/4 v1, 0x0

    .line 559
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 560
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 561
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 564
    if-eqz p1, :cond_e

    const/4 v0, 0x1

    :goto_a
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 565
    return-void

    :cond_e
    move v0, v1

    .line 564
    goto :goto_a
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .registers 4
    .parameter "cb"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 606
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 607
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 608
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 609
    if-eqz p1, :cond_b

    move v0, v1

    :cond_b
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 610
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .registers 3
    .parameter "holder"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    if-eqz p1, :cond_a

    .line 447
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 451
    :goto_9
    return-void

    .line 449
    :cond_a
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/Surface;)V

    goto :goto_9
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 1110
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1111
    return-void
.end method

.method public final startFaceDetection()V
    .registers 3

    .prologue
    .line 1173
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_c

    .line 1174
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1175
    :cond_c
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getMaxNumDetectedFaces()I

    move-result v0

    if-gtz v0, :cond_1e

    .line 1176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "getMaxNumDetectedFaces() return 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1178
    :cond_1e
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1179
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1180
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .registers 2

    .prologue
    .line 1188
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1189
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1190
    return-void
.end method

.method public final stopPreview()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 529
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 530
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 532
    iput-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 533
    iput-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 534
    iput-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 535
    iput-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 536
    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 537
    return-void
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 5
    .parameter "shutter"
    .parameter "raw"
    .parameter "jpeg"

    .prologue
    .line 940
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 941
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .registers 7
    .parameter "shutter"
    .parameter "raw"
    .parameter "postview"
    .parameter "jpeg"

    .prologue
    .line 975
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 976
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 977
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 978
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 981
    const/4 v0, 0x0

    .line 982
    .local v0, msgType:I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_f

    .line 983
    or-int/lit8 v0, v0, 0x2

    .line 985
    :cond_f
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_15

    .line 986
    or-int/lit16 v0, v0, 0x80

    .line 988
    :cond_15
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1b

    .line 989
    or-int/lit8 v0, v0, 0x40

    .line 991
    :cond_1b
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_21

    .line 992
    or-int/lit16 v0, v0, 0x100

    .line 995
    :cond_21
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 996
    return-void
.end method

.method public final native unlock()V
.end method
