.class final Lcom/android/internal/app/ShutdownThread$6;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ShutdownThread;->startSoundThreadForPowerOff()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 385
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4
    .parameter "arg0"

    .prologue
    .line 387
    const-string v0, "ShutdownThread"

    const-string/jumbo v1, "onCompletion(MediaPlayer arg0) called !!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$900()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    if-eqz v0, :cond_1c

    .line 389
    const-string v0, "ShutdownThread"

    const-string v1, "Releasing sAnimationSound end lock"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->access$900()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 392
    :cond_1c
    return-void
.end method
