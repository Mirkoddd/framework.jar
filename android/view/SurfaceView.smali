.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTmpDirty:Landroid/graphics/Rect;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 176
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 92
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 95
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 108
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 110
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 112
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 136
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 137
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 138
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 139
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 140
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 146
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 150
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 151
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 152
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 153
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 154
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 155
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 163
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 698
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 177
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 181
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 92
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 95
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 108
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 110
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 112
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 136
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 137
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 138
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 139
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 140
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 146
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 150
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 151
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 152
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 153
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 154
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 155
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 163
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 698
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 182
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 183
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 186
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 88
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 90
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 91
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 92
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 95
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 99
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 100
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 101
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 102
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 108
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 110
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 112
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 136
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 137
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 138
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 139
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 140
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 144
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 146
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 150
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 151
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 152
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 153
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 154
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 155
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 158
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 163
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 698
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 187
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 188
    return-void
.end method

.method static synthetic access$000(Landroid/view/SurfaceView;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .registers 4

    .prologue
    .line 622
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 623
    :try_start_3
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 624
    .local v0, callbacks:[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 625
    monitor-exit v2

    .line 626
    return-object v0

    .line 625
    .end local v0           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :catchall_12
    move-exception v1

    monitor-exit v2
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private init()V
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 192
    return-void
.end method

.method private updateWindow(ZZ)V
    .registers 42
    .parameter "force"
    .parameter "redrawNeeded"

    .prologue
    .line 384
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v3, :cond_7

    .line 618
    :cond_6
    :goto_6
    return-void

    .line 387
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v35

    check-cast v35, Landroid/view/ViewRootImpl;

    .line 388
    .local v35, viewRoot:Landroid/view/ViewRootImpl;
    if-eqz v35, :cond_1b

    .line 389
    move-object/from16 v0, v35

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 392
    :cond_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_2c

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 396
    :cond_2c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v27, v0

    .line 397
    .local v27, myWidth:I
    if-gtz v27, :cond_38

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v27

    .line 398
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v26, v0

    .line 399
    .local v26, myHeight:I
    if-gtz v26, :cond_44

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v26

    .line 401
    :cond_44
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 402
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_2be

    const/16 v20, 0x1

    .line 403
    .local v20, creating:Z
    :goto_55
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v3, v4, :cond_2c2

    const/16 v21, 0x1

    .line 404
    .local v21, formatChanged:Z
    :goto_61
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWidth:I

    move/from16 v0, v27

    if-ne v3, v0, :cond_71

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mHeight:I

    move/from16 v0, v26

    if-eq v3, v0, :cond_2c6

    :cond_71
    const/16 v31, 0x1

    .line 405
    .local v31, sizeChanged:Z
    :goto_73
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v3, v4, :cond_2ca

    const/16 v37, 0x1

    .line 420
    .local v37, visibleChanged:Z
    :goto_7f
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ne v3, v4, :cond_9b

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-eq v3, v4, :cond_2ce

    :cond_9b
    const/16 v38, 0x1

    .line 422
    .local v38, winFrameSizeChanged:Z
    :goto_9d
    if-nez p1, :cond_d1

    if-nez v20, :cond_d1

    if-nez v21, :cond_d1

    if-nez v31, :cond_d1

    if-nez v37, :cond_d1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v3, v4, :cond_d1

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_d1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    if-nez v3, :cond_d1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    if-nez v3, :cond_d1

    if-nez p2, :cond_d1

    if-eqz v38, :cond_6

    .line 433
    :cond_d1
    :try_start_d1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v36, v0

    move/from16 v0, v36

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 434
    .local v36, visible:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mLeft:I

    .line 435
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mTop:I

    .line 436
    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 437
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 438
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLeft:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 444
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTop:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 445
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 446
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 447
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_140

    .line 448
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 451
    :cond_140
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 452
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x4218

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 459
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v3

    if-nez v3, :cond_171

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2000

    or-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 463
    :cond_171
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_1b4

    .line 464
    new-instance v3, Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 465
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowType:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 466
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v7, :cond_2d2

    const/4 v7, 0x0

    :goto_1ad
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    invoke-interface/range {v3 .. v8}, Landroid/view/IWindowSession;->addWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;)I

    .line 476
    :cond_1b4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_1bb
    .catch Landroid/os/RemoteException; {:try_start_d1 .. :try_end_1bb} :catch_31a

    .line 478
    const/4 v3, 0x0

    :try_start_1bc
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 479
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v30, v0

    .line 480
    .local v30, reportDrawNeeded:Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 481
    if-nez v36, :cond_2d6

    const/4 v3, 0x1

    :goto_1ce
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Lcom/android/internal/view/BaseIWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mHeight:I

    if-eqz v36, :cond_2d9

    const/4 v9, 0x0

    :goto_1ef
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-interface/range {v3 .. v15}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v29

    .line 491
    .local v29, relayoutResult:I
    and-int/lit8 v3, v29, 0x2

    if-eqz v3, :cond_211

    .line 492
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 498
    :cond_211
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v3, :cond_2dd

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 509
    :goto_241
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v34, v0

    .line 510
    .local v34, surfaceWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v33, v0

    .line 511
    .local v33, surfaceHeight:I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v34

    if-ne v3, v0, :cond_261

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v33

    if-eq v3, v0, :cond_31d

    :cond_261
    const/16 v28, 0x1

    .line 513
    .local v28, realSizeChanged:Z
    :goto_263
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 514
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_26f
    .catchall {:try_start_1bc .. :try_end_26f} :catchall_311

    .line 516
    :try_start_26f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_276
    .catch Landroid/os/RemoteException; {:try_start_26f .. :try_end_276} :catch_31a

    .line 520
    or-int v3, v20, v30

    or-int p2, p2, v3

    .line 522
    const/16 v19, 0x0

    .line 524
    .local v19, callbacks:[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v3, v29, 0x4

    if-eqz v3, :cond_321

    const/16 v32, 0x1

    .line 526
    .local v32, surfaceChanged:Z
    :goto_282
    :try_start_282
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v3, :cond_325

    if-nez v32, :cond_28e

    if-nez v36, :cond_325

    if-eqz v37, :cond_325

    .line 527
    :cond_28e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 528
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_325

    .line 530
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 531
    move-object/from16 v17, v19

    .local v17, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .local v25, len$:I
    const/16 v22, 0x0

    .local v22, i$:I
    :goto_2aa
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_325

    aget-object v18, v17, v22

    .line 532
    .local v18, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_2bb
    .catchall {:try_start_282 .. :try_end_2bb} :catchall_4cd

    .line 531
    add-int/lit8 v22, v22, 0x1

    goto :goto_2aa

    .line 402
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v19           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #creating:Z
    .end local v21           #formatChanged:Z
    .end local v22           #i$:I
    .end local v25           #len$:I
    .end local v28           #realSizeChanged:Z
    .end local v29           #relayoutResult:I
    .end local v30           #reportDrawNeeded:Z
    .end local v31           #sizeChanged:Z
    .end local v32           #surfaceChanged:Z
    .end local v33           #surfaceHeight:I
    .end local v34           #surfaceWidth:I
    .end local v36           #visible:Z
    .end local v37           #visibleChanged:Z
    .end local v38           #winFrameSizeChanged:Z
    :cond_2be
    const/16 v20, 0x0

    goto/16 :goto_55

    .line 403
    .restart local v20       #creating:Z
    :cond_2c2
    const/16 v21, 0x0

    goto/16 :goto_61

    .line 404
    .restart local v21       #formatChanged:Z
    :cond_2c6
    const/16 v31, 0x0

    goto/16 :goto_73

    .line 405
    .restart local v31       #sizeChanged:Z
    :cond_2ca
    const/16 v37, 0x0

    goto/16 :goto_7f

    .line 420
    .restart local v37       #visibleChanged:Z
    :cond_2ce
    const/16 v38, 0x0

    goto/16 :goto_9d

    .line 467
    .restart local v36       #visible:Z
    .restart local v38       #winFrameSizeChanged:Z
    :cond_2d2
    const/16 v7, 0x8

    goto/16 :goto_1ad

    .line 481
    .restart local v30       #reportDrawNeeded:Z
    :cond_2d6
    const/4 v3, 0x0

    goto/16 :goto_1ce

    .line 485
    :cond_2d9
    const/16 v9, 0x8

    goto/16 :goto_1ef

    .line 504
    .restart local v29       #relayoutResult:I
    :cond_2dd
    :try_start_2dd
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v16, v0

    .line 505
    .local v16, appInvertedScale:F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v16

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 506
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v16

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_30f
    .catchall {:try_start_2dd .. :try_end_30f} :catchall_311

    goto/16 :goto_241

    .line 516
    .end local v16           #appInvertedScale:F
    .end local v29           #relayoutResult:I
    .end local v30           #reportDrawNeeded:Z
    :catchall_311
    move-exception v3

    :try_start_312
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_31a
    .catch Landroid/os/RemoteException; {:try_start_312 .. :try_end_31a} :catch_31a

    .line 611
    .end local v36           #visible:Z
    :catch_31a
    move-exception v3

    goto/16 :goto_6

    .line 511
    .restart local v29       #relayoutResult:I
    .restart local v30       #reportDrawNeeded:Z
    .restart local v33       #surfaceHeight:I
    .restart local v34       #surfaceWidth:I
    .restart local v36       #visible:Z
    :cond_31d
    const/16 v28, 0x0

    goto/16 :goto_263

    .line 524
    .restart local v19       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .restart local v28       #realSizeChanged:Z
    :cond_321
    const/16 v32, 0x0

    goto/16 :goto_282

    .line 537
    .restart local v32       #surfaceChanged:Z
    :cond_325
    :try_start_325
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 540
    if-eqz v36, :cond_444

    if-nez v37, :cond_444

    if-eqz v32, :cond_444

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_444

    const/16 v23, 0x1

    .line 541
    .local v23, isAppVisibilityEventPending:Z
    :goto_342
    if-eqz v23, :cond_34b

    .line 542
    const-string v3, "SurfaceView"

    const-string v4, "app visibility event must be pending in main thread."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :cond_34b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_3f3

    .line 546
    const-string v4, "SurfaceView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CHECK surface infomation creating="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " formatChanged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " sizeChanged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v31

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " visible="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v36

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " visibleChanged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v37

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " surfaceChanged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " realSizeChanged="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v28

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " redrawNeeded="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " left="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLeft:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-eq v3, v6, :cond_448

    const/4 v3, 0x1

    :goto_3d0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " top="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mTop:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-eq v3, v6, :cond_44a

    const/4 v3, 0x1

    :goto_3e8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_3f3
    const/16 v24, 0x0

    .line 562
    .local v24, isFormatChangedAndSurfaceChanged:Z
    if-eqz v21, :cond_3fb

    if-eqz v32, :cond_3fb

    .line 563
    const/16 v24, 0x1

    .line 566
    :cond_3fb
    if-eqz v36, :cond_409

    if-nez v23, :cond_409

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-nez v3, :cond_40d

    :cond_409
    if-eqz v36, :cond_4ae

    if-eqz v24, :cond_4ae

    .line 568
    :cond_40d
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v3, :cond_44c

    if-nez v32, :cond_417

    if-eqz v37, :cond_44c

    .line 569
    :cond_417
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 570
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 572
    if-nez v19, :cond_427

    .line 573
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 575
    :cond_427
    move-object/from16 v17, v19

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_430
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_44c

    aget-object v18, v17, v22

    .line 576
    .restart local v18       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 575
    add-int/lit8 v22, v22, 0x1

    goto :goto_430

    .line 540
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v22           #i$:I
    .end local v23           #isAppVisibilityEventPending:Z
    .end local v24           #isFormatChangedAndSurfaceChanged:Z
    .end local v25           #len$:I
    :cond_444
    const/16 v23, 0x0

    goto/16 :goto_342

    .line 546
    .restart local v23       #isAppVisibilityEventPending:Z
    :cond_448
    const/4 v3, 0x0

    goto :goto_3d0

    :cond_44a
    const/4 v3, 0x0

    goto :goto_3e8

    .line 579
    .restart local v24       #isFormatChangedAndSurfaceChanged:Z
    :cond_44c
    if-nez v20, :cond_456

    if-nez v21, :cond_456

    if-nez v31, :cond_456

    if-nez v37, :cond_456

    if-eqz v28, :cond_481

    .line 583
    :cond_456
    if-nez v19, :cond_45c

    .line 584
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 586
    :cond_45c
    move-object/from16 v17, v19

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_465
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_481

    aget-object v18, v17, v22

    .line 587
    .restart local v18       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v26

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 586
    add-int/lit8 v22, v22, 0x1

    goto :goto_465

    .line 590
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v22           #i$:I
    .end local v25           #len$:I
    :cond_481
    if-eqz p2, :cond_4ae

    .line 592
    if-nez v19, :cond_489

    .line 593
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v19

    .line 595
    :cond_489
    move-object/from16 v17, v19

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v25, v0

    .restart local v25       #len$:I
    const/16 v22, 0x0

    .restart local v22       #i$:I
    :goto_492
    move/from16 v0, v22

    move/from16 v1, v25

    if-ge v0, v1, :cond_4ae

    aget-object v18, v17, v22

    .line 596
    .restart local v18       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v18

    instance-of v3, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_4ab

    .line 597
    check-cast v18, Landroid/view/SurfaceHolder$Callback2;

    .end local v18           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_4ab
    .catchall {:try_start_325 .. :try_end_4ab} :catchall_4cd

    .line 595
    :cond_4ab
    add-int/lit8 v22, v22, 0x1

    goto :goto_492

    .line 604
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v22           #i$:I
    .end local v25           #len$:I
    :cond_4ae
    const/4 v3, 0x0

    :try_start_4af
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 605
    if-eqz p2, :cond_4c0

    .line 607
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 609
    :cond_4c0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    goto/16 :goto_6

    .line 604
    .end local v23           #isAppVisibilityEventPending:Z
    .end local v24           #isFormatChangedAndSurfaceChanged:Z
    :catchall_4cd
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 605
    if-eqz p2, :cond_4e0

    .line 607
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 609
    :cond_4e0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    throw v3
    :try_end_4ec
    .catch Landroid/os/RemoteException; {:try_start_4af .. :try_end_4ec} :catch_31a
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 323
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 325
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_14

    .line 327
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 330
    :cond_14
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 331
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 311
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_12

    .line 313
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_12

    .line 315
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 318
    :cond_12
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 319
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11
    .parameter "region"

    .prologue
    .line 284
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_b

    .line 285
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 306
    :cond_a
    :goto_a
    return v7

    .line 288
    :cond_b
    const/4 v7, 0x1

    .line 289
    .local v7, opaque:Z
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_20

    .line 291
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 303
    :cond_16
    :goto_16
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 304
    const/4 v7, 0x0

    goto :goto_a

    .line 292
    :cond_20
    if-eqz p1, :cond_16

    .line 293
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 294
    .local v8, w:I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 295
    .local v6, h:I
    if-lez v8, :cond_16

    if-lez v6, :cond_16

    .line 296
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 298
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 299
    .local v1, l:I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 300
    .local v2, t:I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_16
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 630
    invoke-direct {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 631
    return-void
.end method

.method public isFixedSize()Z
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 641
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 206
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 207
    iget-object v1, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 208
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 209
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 210
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "SurfaceView"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3c

    move v1, v2

    :goto_25
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 213
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_3b

    .line 214
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 215
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 216
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 217
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 219
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_3b
    return-void

    .line 211
    :cond_3c
    const/4 v1, 0x0

    goto :goto_25
.end method

.method protected onDetachedFromWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 239
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v1, :cond_16

    .line 240
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 241
    .local v0, observer:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 242
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 243
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 246
    .end local v0           #observer:Landroid/view/ViewTreeObserver;
    :cond_16
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 247
    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 248
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 249
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v1, :cond_2a

    .line 251
    :try_start_21
    iget-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_28} :catch_34

    .line 255
    :goto_28
    iput-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 257
    :cond_2a
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 258
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 260
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 261
    return-void

    .line 252
    :catch_34
    move-exception v1

    goto :goto_28
.end method

.method protected onMeasure(II)V
    .registers 7
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v3, 0x0

    .line 265
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_19

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    .line 268
    .local v1, width:I
    :goto_b
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1e

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    .line 271
    .local v0, height:I
    :goto_15
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 272
    return-void

    .line 265
    .end local v0           #height:I
    .end local v1           #width:I
    :cond_19
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    goto :goto_b

    .line 268
    .restart local v1       #width:I
    :cond_1e
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    goto :goto_15
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 224
    if-nez p1, :cond_18

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 225
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1a

    :goto_12
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 226
    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 227
    return-void

    :cond_18
    move v0, v2

    .line 224
    goto :goto_8

    :cond_1a
    move v1, v2

    .line 225
    goto :goto_12
.end method

.method protected setFrame(IIII)Z
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 278
    .local v0, result:Z
    invoke-direct {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 279
    return v0
.end method

.method public setVisibility(I)V
    .registers 5
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 231
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    if-nez p1, :cond_18

    move v0, v1

    :goto_8
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 233
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1a

    :goto_12
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 234
    invoke-direct {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 235
    return-void

    :cond_18
    move v0, v2

    .line 232
    goto :goto_8

    :cond_1a
    move v1, v2

    .line 233
    goto :goto_12
.end method

.method public setWindowType(I)V
    .registers 2
    .parameter "type"

    .prologue
    .line 380
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 381
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .registers 3
    .parameter "isMediaOverlay"

    .prologue
    .line 345
    if-eqz p1, :cond_7

    const/16 v0, 0x3ec

    :goto_4
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 348
    return-void

    .line 345
    :cond_7
    const/16 v0, 0x3e9

    goto :goto_4
.end method

.method public setZOrderOnTop(Z)V
    .registers 5
    .parameter "onTop"

    .prologue
    .line 364
    if-eqz p1, :cond_10

    .line 365
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 367
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 372
    :goto_f
    return-void

    .line 369
    :cond_10
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 370
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_f
.end method
