.class Landroid/view/ViewRootImpl$InputEventMessage;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputEventMessage"
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static sPool:Landroid/view/ViewRootImpl$InputEventMessage;

.field private static sPoolSize:I

.field private static final sPoolSync:Ljava/lang/Object;


# instance fields
.field mMessage:Landroid/os/Message;

.field mNext:Landroid/view/ViewRootImpl$InputEventMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 4050
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    .line 4052
    const/4 v0, 0x0

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Message;)V
    .registers 3
    .parameter "m"

    .prologue
    .line 4056
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4057
    iput-object p1, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 4058
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4059
    return-void
.end method

.method public static obtain(Landroid/os/Message;)Landroid/view/ViewRootImpl$InputEventMessage;
    .registers 4
    .parameter "msg"

    .prologue
    .line 4066
    sget-object v2, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v2

    .line 4067
    :try_start_3
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v1, :cond_1a

    .line 4068
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4069
    .local v0, m:Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    sput-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4070
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4071
    sget v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 4072
    iput-object p0, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    .line 4073
    monitor-exit v2

    .line 4076
    .end local v0           #m:Landroid/view/ViewRootImpl$InputEventMessage;
    :goto_19
    return-object v0

    .line 4075
    :cond_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_21

    .line 4076
    new-instance v0, Landroid/view/ViewRootImpl$InputEventMessage;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputEventMessage;-><init>(Landroid/os/Message;)V

    goto :goto_19

    .line 4075
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method


# virtual methods
.method public recycle()V
    .registers 4

    .prologue
    .line 4083
    iget-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 4084
    sget-object v1, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    .line 4085
    :try_start_8
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1a

    .line 4086
    sget-object v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    iput-object v0, p0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4087
    sput-object p0, Landroid/view/ViewRootImpl$InputEventMessage;->sPool:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4088
    sget v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/view/ViewRootImpl$InputEventMessage;->sPoolSize:I

    .line 4090
    :cond_1a
    monitor-exit v1

    .line 4092
    return-void

    .line 4090
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1c

    throw v0
.end method
