.class Lcom/android/internal/widget/LockPatternUtils$PasswordFileObserver;
.super Landroid/os/FileObserver;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PasswordFileObserver"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "path"
    .parameter "mask"

    .prologue
    .line 177
    invoke-direct {p0, p1, p2}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 178
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 10
    .parameter "event"
    .parameter "path"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 182
    const-string v2, "gesture.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 183
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock pattern file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$100()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_2d

    :goto_29
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 199
    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    move v0, v1

    .line 184
    goto :goto_29

    .line 185
    :cond_2f
    const-string/jumbo v2, "password.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 186
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock password file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_59

    :goto_55
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2c

    :cond_59
    move v0, v1

    goto :goto_55

    .line 188
    :cond_5b
    const-string/jumbo v2, "sparepassword.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 189
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock sparepassword file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$500()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_85

    :goto_81
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2c

    :cond_85
    move v0, v1

    goto :goto_81

    .line 191
    :cond_87
    const-string/jumbo v2, "recovery_password.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b4

    .line 192
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock recovery password file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$600()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_b2

    :goto_ad
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2c

    :cond_b2
    move v0, v1

    goto :goto_ad

    .line 194
    :cond_b4
    const-string/jumbo v2, "signature.key"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 195
    const-string v2, "LockPatternUtils"

    const-string/jumbo v3, "lock signatures file changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$900()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->access$800()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-lez v3, :cond_df

    :goto_da
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_2c

    :cond_df
    move v0, v1

    goto :goto_da
.end method
