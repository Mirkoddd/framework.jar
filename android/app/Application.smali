.class public Landroid/app/Application;
.super Landroid/content/ContextWrapper;
.source "Application.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/Application$ActivityLifecycleCallbacks;
    }
.end annotation


# instance fields
.field private mActivityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Application$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field public mLoadedApk:Landroid/app/LoadedApk;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 65
    return-void
.end method

.method private collectActivityLifecycleCallbacks()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 235
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 236
    :try_start_4
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 237
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 239
    :cond_12
    monitor-exit v2

    .line 240
    return-object v0

    .line 239
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method

.method private collectComponentCallbacks()[Ljava/lang/Object;
    .registers 4

    .prologue
    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, callbacks:[Ljava/lang/Object;
    iget-object v2, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 226
    :try_start_4
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 227
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 229
    :cond_12
    monitor-exit v2

    .line 230
    return-object v0

    .line 229
    :catchall_14
    move-exception v1

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method final attach(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 154
    invoke-virtual {p0, p1}, Landroid/app/Application;->attachBaseContext(Landroid/content/Context;)V

    .line 155
    invoke-static {p1}, Landroid/app/ContextImpl;->getImpl(Landroid/content/Context;)Landroid/app/ContextImpl;

    move-result-object v0

    iget-object v0, v0, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    iput-object v0, p0, Landroid/app/Application;->mLoadedApk:Landroid/app/LoadedApk;

    .line 156
    return-void
.end method

.method dispatchActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .parameter "activity"
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 160
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 161
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 162
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 161
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 166
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method dispatchActivityDestroyed(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 215
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 216
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 217
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 218
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    .line 217
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 221
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method dispatchActivityPaused(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 188
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 189
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 190
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 193
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method dispatchActivityResumed(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 179
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 180
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 181
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 180
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 184
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method dispatchActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 6
    .parameter "activity"
    .parameter "outState"

    .prologue
    .line 205
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 206
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 207
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 208
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1, p2}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 212
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method dispatchActivityStarted(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 171
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 172
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 175
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method dispatchActivityStopped(Landroid/app/Activity;)V
    .registers 5
    .parameter "activity"

    .prologue
    .line 196
    invoke-direct {p0}, Landroid/app/Application;->collectActivityLifecycleCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 198
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 199
    aget-object v2, v0, v1

    check-cast v2, Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-interface {v2, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 202
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 5
    .parameter "newConfig"

    .prologue
    .line 92
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Typeface;->SetAppTypeFace(Ljava/lang/String;)V

    .line 95
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 96
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_1b

    .line 97
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    array-length v2, v0

    if-ge v1, v2, :cond_1b

    .line 98
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 101
    .end local v1           #i:I
    :cond_1b
    return-void
.end method

.method public onCreate()V
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Typeface;->SetAppTypeFace(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public onLowMemory()V
    .registers 4

    .prologue
    .line 104
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 105
    .local v0, callbacks:[Ljava/lang/Object;
    if-eqz v0, :cond_14

    .line 106
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-ge v1, v2, :cond_14

    .line 107
    aget-object v2, v0, v1

    check-cast v2, Landroid/content/ComponentCallbacks;

    invoke-interface {v2}, Landroid/content/ComponentCallbacks;->onLowMemory()V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 110
    .end local v1           #i:I
    :cond_14
    return-void
.end method

.method public onTerminate()V
    .registers 1

    .prologue
    .line 88
    return-void
.end method

.method public onTrimMemory(I)V
    .registers 6
    .parameter "level"

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/Application;->collectComponentCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 114
    .local v1, callbacks:[Ljava/lang/Object;
    if-eqz v1, :cond_18

    .line 115
    const/4 v2, 0x0

    .local v2, i:I
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_18

    .line 116
    aget-object v0, v1, v2

    .line 117
    .local v0, c:Ljava/lang/Object;
    instance-of v3, v0, Landroid/content/ComponentCallbacks2;

    if-eqz v3, :cond_15

    .line 118
    check-cast v0, Landroid/content/ComponentCallbacks2;

    .end local v0           #c:Ljava/lang/Object;
    invoke-interface {v0, p1}, Landroid/content/ComponentCallbacks2;->onTrimMemory(I)V

    .line 115
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 122
    .end local v2           #i:I
    :cond_18
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 137
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 138
    :try_start_3
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v1

    .line 140
    return-void

    .line 139
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 125
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 126
    :try_start_3
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 143
    iget-object v1, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 144
    :try_start_3
    iget-object v0, p0, Landroid/app/Application;->mActivityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 145
    monitor-exit v1

    .line 146
    return-void

    .line 145
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    .registers 4
    .parameter "callback"

    .prologue
    .line 131
    iget-object v1, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 132
    :try_start_3
    iget-object v0, p0, Landroid/app/Application;->mComponentCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 133
    monitor-exit v1

    .line 134
    return-void

    .line 133
    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v0
.end method
