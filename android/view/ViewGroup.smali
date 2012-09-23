.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$HoverTarget;,
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_PREVENT_DISPATCH_ATTACHED_TO_WINDOW:I = 0x400000

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2

.field private static bForceSplit:Z


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private final mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawLayers:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mHoveredSelf:Z

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutSuppressed:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private final mLocalPoint:Landroid/graphics/PointF;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 282
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    .line 351
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "ro.csc.splittouch"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewGroup;->bForceSplit:Z

    return-void

    .line 282
    nop

    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 375
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 106
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4917
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 376
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 377
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4917
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 381
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 382
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 383
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 386
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 130
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 143
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 371
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4917
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 387
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 388
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 389
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 4810
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4812
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_b

    .line 4813
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4816
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4817
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .registers 9
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3396
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3397
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3398
    .local v1, count:I
    array-length v2, v0

    .line 3399
    .local v2, size:I
    if-ne p2, v1, :cond_20

    .line 3400
    if-ne v2, v1, :cond_17

    .line 3401
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3402
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3403
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3405
    :cond_17
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 3423
    :cond_1f
    :goto_1f
    return-void

    .line 3406
    :cond_20
    if-ge p2, v1, :cond_55

    .line 3407
    if-ne v2, v1, :cond_4d

    .line 3408
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3409
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3410
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3411
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3415
    :goto_3a
    aput-object p1, v0, p2

    .line 3416
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3417
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1f

    .line 3418
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1f

    .line 3413
    :cond_4d
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 3421
    :cond_55
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 1849
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 1850
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1851
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1852
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 10
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 3335
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_c

    .line 3338
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3341
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3342
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3346
    :cond_1a
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_23

    .line 3347
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3350
    :cond_23
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3351
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3354
    :cond_2d
    if-eqz p4, :cond_7b

    .line 3355
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3360
    :goto_31
    if-gez p2, :cond_35

    .line 3361
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3364
    :cond_35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3367
    if-eqz p4, :cond_7f

    .line 3368
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3373
    :goto_3d
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3374
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3377
    :cond_4a
    iget-object v0, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3378
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_6b

    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v2, v4

    if-nez v2, :cond_6b

    .line 3379
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3380
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3381
    iget-object v2, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3382
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_69

    .line 3383
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3385
    :cond_69
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3388
    .end local v1           #lastKeepOn:Z
    :cond_6b
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewAdded(Landroid/view/View;)V

    .line 3390
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7a

    .line 3391
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3393
    :cond_7a
    return-void

    .line 3357
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_7b
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_31

    .line 3370
    :cond_7f
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_3d
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 3483
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3484
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3485
    return-void
.end method

.method private static canViewReceivePointerEvents(Landroid/view/View;)Z
    .registers 2
    .parameter "child"

    .prologue
    .line 1886
    iget v0, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v0, v0, 0xc

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .registers 12
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1809
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_36

    .line 1810
    const/4 v8, 0x0

    .line 1811
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_1a

    .line 1812
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1813
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1815
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1816
    const/4 v8, 0x1

    .line 1819
    .end local v0           #now:J
    :cond_1a
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1c
    if-eqz v9, :cond_2e

    .line 1820
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1821
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 1819
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1c

    .line 1823
    :cond_2e
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1825
    if-eqz v8, :cond_36

    .line 1826
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1829
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_36
    return-void
.end method

.method private clearTouchTargets()V
    .registers 4

    .prologue
    .line 1794
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1795
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_f

    .line 1797
    :cond_4
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1798
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1799
    move-object v1, v0

    .line 1800
    if-nez v1, :cond_4

    .line 1801
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1803
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_f
    return-void
.end method

.method private dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z
    .registers 9
    .parameter "event"
    .parameter "child"

    .prologue
    .line 1583
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p2, Landroid/view/View;->mLeft:I

    sub-int/2addr v4, v5

    int-to-float v1, v4

    .line 1584
    .local v1, offsetX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    iget v5, p2, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    int-to-float v2, v4

    .line 1587
    .local v2, offsetY:F
    invoke-virtual {p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_28

    .line 1588
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 1589
    .local v3, transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual {v3, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1590
    invoke-virtual {p2}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1591
    invoke-virtual {p2, v3}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1592
    .local v0, handled:Z
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    .line 1598
    .end local v3           #transformedEvent:Landroid/view/MotionEvent;
    :goto_27
    return v0

    .line 1594
    .end local v0           #handled:Z
    :cond_28
    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1595
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1596
    .restart local v0       #handled:Z
    neg-float v4, v1

    neg-float v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_27
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .registers 14
    .parameter "event"
    .parameter "cancel"
    .parameter "child"
    .parameter "desiredPointerIdBits"

    .prologue
    const/4 v7, 0x3

    .line 1926
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1927
    .local v4, oldAction:I
    if-nez p2, :cond_9

    if-ne v4, v7, :cond_1b

    .line 1928
    :cond_9
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1929
    if-nez p3, :cond_16

    .line 1930
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1934
    .local v0, handled:Z
    :goto_12
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1989
    .end local v0           #handled:Z
    :goto_15
    return v0

    .line 1932
    :cond_16
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_12

    .line 1939
    .end local v0           #handled:Z
    :cond_1b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerIdBits()I

    move-result v5

    .line 1940
    .local v5, oldPointerIdBits:I
    and-int v1, v5, p4

    .line 1944
    .local v1, newPointerIdBits:I
    if-nez v1, :cond_25

    .line 1945
    const/4 v0, 0x0

    goto :goto_15

    .line 1953
    :cond_25
    if-ne v1, v5, :cond_5d

    .line 1954
    if-eqz p3, :cond_2f

    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-eqz v7, :cond_4f

    .line 1955
    :cond_2f
    if-nez p3, :cond_36

    .line 1956
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_15

    .line 1958
    .end local v0           #handled:Z
    :cond_36
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 1959
    .local v2, offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 1960
    .local v3, offsetY:F
    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1962
    invoke-virtual {p3, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1964
    .restart local v0       #handled:Z
    neg-float v7, v2

    neg-float v8, v3

    invoke-virtual {p1, v7, v8}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_15

    .line 1968
    .end local v0           #handled:Z
    .end local v2           #offsetX:F
    .end local v3           #offsetY:F
    :cond_4f
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v6

    .line 1974
    .local v6, transformedEvent:Landroid/view/MotionEvent;
    :goto_53
    if-nez p3, :cond_62

    .line 1975
    invoke-super {p0, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1988
    .restart local v0       #handled:Z
    :goto_59
    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_15

    .line 1970
    .end local v0           #handled:Z
    .end local v6           #transformedEvent:Landroid/view/MotionEvent;
    :cond_5d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->split(I)Landroid/view/MotionEvent;

    move-result-object v6

    .restart local v6       #transformedEvent:Landroid/view/MotionEvent;
    goto :goto_53

    .line 1977
    :cond_62
    iget v7, p0, Landroid/view/View;->mScrollX:I

    iget v8, p3, Landroid/view/View;->mLeft:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 1978
    .restart local v2       #offsetX:F
    iget v7, p0, Landroid/view/View;->mScrollY:I

    iget v8, p3, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v3, v7

    .line 1979
    .restart local v3       #offsetY:F
    invoke-virtual {v6, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1980
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v7

    if-nez v7, :cond_7e

    .line 1981
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1984
    :cond_7e
    invoke-virtual {p3, v6}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .restart local v0       #handled:Z
    goto :goto_59
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 4827
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4828
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1f

    .line 4829
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4830
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4832
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_16

    .line 4833
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4836
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4837
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4841
    :cond_1f
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4842
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4845
    :cond_2a
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    .line 4846
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 4849
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4851
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4853
    :cond_40
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .registers 12
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 4726
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4727
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4729
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4731
    .local v2, size:I
    const/4 v1, 0x0

    .line 4732
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 4734
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_50

    .line 4790
    :cond_16
    :goto_16
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 4737
    :sswitch_1b
    if-ltz p2, :cond_21

    .line 4738
    move v1, p2

    .line 4739
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4740
    :cond_21
    if-ne p2, v8, :cond_27

    .line 4742
    move v1, v2

    .line 4743
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4744
    :cond_27
    if-ne p2, v7, :cond_16

    .line 4747
    move v1, v2

    .line 4748
    const/high16 v0, -0x8000

    goto :goto_16

    .line 4754
    :sswitch_2d
    if-ltz p2, :cond_33

    .line 4756
    move v1, p2

    .line 4757
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4758
    :cond_33
    if-ne p2, v8, :cond_39

    .line 4761
    move v1, v2

    .line 4762
    const/high16 v0, -0x8000

    goto :goto_16

    .line 4763
    :cond_39
    if-ne p2, v7, :cond_16

    .line 4766
    move v1, v2

    .line 4767
    const/high16 v0, -0x8000

    goto :goto_16

    .line 4773
    :sswitch_3f
    if-ltz p2, :cond_45

    .line 4775
    move v1, p2

    .line 4776
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4777
    :cond_45
    if-ne p2, v8, :cond_4a

    .line 4780
    const/4 v1, 0x0

    .line 4781
    const/4 v0, 0x0

    goto :goto_16

    .line 4782
    :cond_4a
    if-ne p2, v7, :cond_16

    .line 4785
    const/4 v1, 0x0

    .line 4786
    const/4 v0, 0x0

    goto :goto_16

    .line 4734
    nop

    :sswitch_data_50
    .sparse-switch
        -0x80000000 -> :sswitch_2d
        0x0 -> :sswitch_3f
        0x40000000 -> :sswitch_1b
    .end sparse-switch
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .registers 4
    .parameter "child"

    .prologue
    .line 1836
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_2
    if-eqz v0, :cond_c

    .line 1837
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_9

    .line 1841
    .end local v0           #target:Landroid/view/ViewGroup$TouchTarget;
    :goto_8
    return-object v0

    .line 1836
    .restart local v0       #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_9
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_2

    .line 1841
    :cond_c
    const/4 v0, 0x0

    goto :goto_8
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 413
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 416
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 417
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    if-ge v4, v0, :cond_7e

    .line 418
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 419
    .local v3, attr:I
    packed-switch v3, :pswitch_data_82

    .line 417
    :cond_16
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 421
    :pswitch_19
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_16

    .line 424
    :pswitch_21
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_16

    .line 427
    :pswitch_29
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_16

    .line 430
    :pswitch_31
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_16

    .line 433
    :pswitch_3a
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_16

    .line 436
    :pswitch_42
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_16

    .line 439
    :pswitch_4a
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 440
    .local v5, id:I
    if-lez v5, :cond_16

    .line 441
    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_16

    .line 445
    .end local v5           #id:I
    :pswitch_5b
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_16

    .line 448
    :pswitch_67
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_16

    .line 451
    :pswitch_6f
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 452
    .local v2, animateLayoutChanges:Z
    if-eqz v2, :cond_16

    .line 453
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_16

    .line 459
    .end local v2           #animateLayoutChanges:Z
    .end local v3           #attr:I
    :cond_7e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 460
    return-void

    .line 419
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_19
        :pswitch_21
        :pswitch_4a
        :pswitch_29
        :pswitch_31
        :pswitch_42
        :pswitch_3a
        :pswitch_5b
        :pswitch_67
        :pswitch_6f
    .end packed-switch
.end method

.method private initViewGroup()V
    .registers 3

    .prologue
    const/16 v0, 0x80

    .line 393
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 394
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 395
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 396
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 397
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 398
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 400
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_36

    .line 401
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 404
    :cond_36
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 406
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 407
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 409
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 410
    return-void
.end method

.method private notifyAnimationListener()V
    .registers 4

    .prologue
    .line 2562
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2563
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2565
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_18

    .line 2566
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 2571
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2574
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_18
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_32

    .line 2575
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2576
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_32

    .line 2577
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2581
    :cond_32
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2582
    return-void
.end method

.method private static obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 2
    .parameter "event"

    .prologue
    .line 1525
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    if-nez v0, :cond_7

    .line 1528
    .end local p0
    :goto_6
    return-object p0

    .restart local p0
    :cond_7
    invoke-static {p0}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p0

    goto :goto_6
.end method

.method private removeFromArray(I)V
    .registers 7
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3427
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3428
    .local v0, children:[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    .line 3429
    :cond_11
    aget-object v2, v0, p1

    iput-object v4, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3431
    :cond_15
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3432
    .local v1, count:I
    add-int/lit8 v2, v1, -0x1

    if-ne p1, v2, :cond_2f

    .line 3433
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    .line 3440
    :goto_23
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_4b

    .line 3441
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 3442
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3446
    :cond_2e
    :goto_2e
    return-void

    .line 3434
    :cond_2f
    if-ltz p1, :cond_45

    if-ge p1, v1, :cond_45

    .line 3435
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3436
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v4, v0, v2

    goto :goto_23

    .line 3438
    :cond_45
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3443
    :cond_4b
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2e

    .line 3444
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_2e
.end method

.method private removeFromArray(II)V
    .registers 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 3450
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3451
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3453
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3454
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3456
    .local v2, end:I
    if-ne p1, v2, :cond_13

    .line 3480
    :goto_12
    return-void

    .line 3460
    :cond_13
    if-ne v2, v1, :cond_21

    .line 3461
    move v3, p1

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_3b

    .line 3462
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3463
    aput-object v5, v0, v3

    .line 3461
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 3466
    .end local v3           #i:I
    :cond_21
    move v3, p1

    .restart local v3       #i:I
    :goto_22
    if-ge v3, v2, :cond_2b

    .line 3467
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3466
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 3472
    :cond_2b
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3474
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_34
    if-ge v3, v1, :cond_3b

    .line 3475
    aput-object v5, v0, v3

    .line 3474
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 3479
    :cond_3b
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_12
.end method

.method private removePointersFromTouchTargets(I)V
    .registers 7
    .parameter "pointerIdBits"

    .prologue
    .line 1859
    const/4 v1, 0x0

    .line 1860
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1861
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_3
    if-eqz v2, :cond_26

    .line 1862
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1863
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_23

    .line 1864
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1865
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_23

    .line 1866
    if-nez v1, :cond_20

    .line 1867
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1871
    :goto_1b
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1872
    move-object v2, v0

    .line 1873
    goto :goto_3

    .line 1869
    :cond_20
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1b

    .line 1876
    :cond_23
    move-object v1, v2

    .line 1877
    move-object v2, v0

    .line 1878
    goto :goto_3

    .line 1879
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_26
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .registers 5
    .parameter "index"
    .parameter "view"

    .prologue
    .line 3572
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_9

    .line 3573
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3576
    :cond_9
    const/4 v0, 0x0

    .line 3577
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_12

    .line 3578
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3579
    const/4 v0, 0x1

    .line 3582
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_24

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_37

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 3584
    :cond_24
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3589
    :cond_27
    :goto_27
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3591
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3593
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3595
    if-eqz v0, :cond_36

    .line 3596
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3598
    :cond_36
    return-void

    .line 3585
    :cond_37
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_27

    .line 3586
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_27
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 3564
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3565
    .local v0, index:I
    if-ltz v0, :cond_9

    .line 3566
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3568
    :cond_9
    return-void
.end method

.method private removeViewsInternal(II)V
    .registers 12
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v7, 0x0

    .line 3634
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3635
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_3f

    const/4 v2, 0x1

    .line 3636
    .local v2, detach:Z
    :goto_8
    const/4 v1, 0x0

    .line 3638
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3639
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 3641
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_e
    if-ge v5, v3, :cond_47

    .line 3642
    aget-object v6, v0, v5

    .line 3644
    .local v6, view:Landroid/view/View;
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v8, :cond_1b

    .line 3645
    iget-object v8, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v8, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3648
    :cond_1b
    if-ne v6, v4, :cond_21

    .line 3649
    invoke-virtual {v6}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3650
    move-object v1, v6

    .line 3653
    :cond_21
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-nez v8, :cond_33

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v8, :cond_41

    iget-object v8, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 3655
    :cond_33
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3660
    :cond_36
    :goto_36
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3662
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3641
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_3f
    move v2, v7

    .line 3635
    goto :goto_8

    .line 3656
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_41
    if-eqz v2, :cond_36

    .line 3657
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_36

    .line 3665
    .end local v6           #view:Landroid/view/View;
    :cond_47
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3667
    if-eqz v1, :cond_4f

    .line 3668
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3670
    :cond_4f
    return-void
.end method

.method private resetCancelNextUpFlag(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 1783
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 1784
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1785
    const/4 v0, 0x1

    .line 1787
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private resetTouchState()V
    .registers 3

    .prologue
    .line 1773
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1774
    invoke-direct {p0, p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1775
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1776
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .registers 5
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 4425
    if-eqz p2, :cond_8

    .line 4426
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4430
    :goto_7
    return-void

    .line 4428
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_7
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 779
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 780
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 787
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 789
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 791
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_21

    .line 792
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 793
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 795
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_11
    if-ge v5, v2, :cond_21

    .line 796
    aget-object v0, v1, v5

    .line 797
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1e

    .line 798
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 795
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 807
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_21
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_2e

    .line 811
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 813
    :cond_2e
    return-void
.end method

.method public addStatesFromChildren()Z
    .registers 2

    .prologue
    .line 5091
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 867
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 868
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 870
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_18

    .line 871
    aget-object v0, v1, v3

    .line 872
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_15

    .line 873
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 870
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 876
    .end local v0           #child:Landroid/view/View;
    :cond_18
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3150
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 3151
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 6
    .parameter "child"
    .parameter "index"

    .prologue
    .line 3163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3164
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_14

    .line 3165
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3166
    if-nez v0, :cond_14

    .line 3167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3170
    :cond_14
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3171
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3180
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 3181
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 3182
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 3183
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3184
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3211
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3212
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3214
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "child"
    .parameter "params"

    .prologue
    .line 3193
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 3194
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 3299
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 3317
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3318
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 3319
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3320
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 6
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 3499
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3501
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_b

    .line 3502
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3503
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3506
    :cond_b
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 3507
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 3508
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v2, -0x8000

    .line 3785
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3787
    if-gez p2, :cond_8

    .line 3788
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3791
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3793
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3794
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3796
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/View;->mPrivateFlags:I

    .line 3798
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3799
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3801
    :cond_2e
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 988
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 989
    .local v0, index:I
    if-ltz v0, :cond_10

    .line 990
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 991
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 992
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 994
    :cond_10
    return-void
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 4250
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 3233
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 5099
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 5100
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5102
    :cond_9
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3329
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3330
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 668
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 669
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 670
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 672
    :cond_c
    return-void
.end method

.method public clearDisappearingChildren()V
    .registers 2

    .prologue
    .line 4799
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 4800
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4802
    :cond_9
    return-void
.end method

.method public clearFocus()V
    .registers 2

    .prologue
    .line 679
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 682
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 683
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 685
    :cond_c
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 2401
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2402
    .local v2, count:I
    const/4 v4, 0x0

    .line 2404
    .local v4, visibilities:[I
    if-eqz p3, :cond_1f

    .line 2405
    new-array v4, v2, [I

    .line 2406
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_1f

    .line 2407
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2408
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 2409
    aget v5, v4, v3

    if-nez v5, :cond_1c

    .line 2410
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2406
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2415
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1f
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2417
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_34

    .line 2418
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_26
    if-ge v3, v2, :cond_34

    .line 2419
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2418
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 2423
    .end local v3           #i:I
    :cond_34
    return-object v0
.end method

.method protected debug(I)V
    .registers 8
    .parameter "depth"

    .prologue
    .line 4568
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 4571
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_24

    .line 4572
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4573
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4574
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4576
    .end local v3           #output:Ljava/lang/String;
    :cond_24
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_45

    .line 4577
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4578
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4579
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4581
    .end local v3           #output:Ljava/lang/String;
    :cond_45
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4582
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_48
    if-ge v2, v1, :cond_56

    .line 4583
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 4584
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 4582
    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 4587
    .end local v0           #child:Landroid/view/View;
    :cond_56
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_77

    .line 4588
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4589
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4590
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    .end local v3           #output:Ljava/lang/String;
    :cond_77
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3871
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3872
    .local v1, count:I
    if-gtz v1, :cond_6

    .line 3883
    :cond_5
    return-void

    .line 3876
    :cond_6
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3877
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3879
    add-int/lit8 v2, v1, -0x1

    .local v2, i:I
    :goto_d
    if-ltz v2, :cond_5

    .line 3880
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3881
    aput-object v4, v0, v2

    .line 3879
    add-int/lit8 v2, v2, -0x1

    goto :goto_d
.end method

.method protected detachViewFromParent(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 3836
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3837
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3818
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3819
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3855
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3856
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 8
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 2202
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v4, 0x40

    or-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2203
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2204
    iget v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v4, -0x400001

    and-int/2addr v3, v4

    iput v3, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2206
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 2208
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2209
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2210
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1c
    if-ge v2, v1, :cond_26

    .line 2211
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 2210
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 2213
    :cond_26
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 975
    iget v3, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 976
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 977
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 978
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 979
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 980
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 979
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 982
    :cond_17
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 955
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 956
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 957
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 958
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 959
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 958
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 961
    :cond_12
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .registers 7
    .parameter "consistency"

    .prologue
    .line 4513
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 4515
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4516
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4517
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 4518
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v3, 0x0

    .line 4517
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4521
    :cond_17
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2256
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 2259
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 2262
    iput-object v4, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 2263
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v3, :cond_14

    .line 2264
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 2265
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 2268
    :cond_14
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2269
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2270
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v1, :cond_23

    .line 2271
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2270
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 2273
    :cond_23
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2274
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 6
    .parameter "hint"

    .prologue
    .line 883
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 884
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 885
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 886
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 887
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 889
    :cond_12
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 22
    .parameter "event"

    .prologue
    .line 1003
    const/4 v11, 0x0

    .line 1004
    .local v11, retval:Z
    move-object/from16 v0, p1

    iget v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1005
    .local v14, tx:F
    move-object/from16 v0, p1

    iget v15, v0, Landroid/view/DragEvent;->mY:F

    .line 1007
    .local v15, ty:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v12

    .line 1010
    .local v12, root:Landroid/view/ViewRootImpl;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_224

    .line 1154
    :cond_16
    :goto_16
    :pswitch_16
    if-nez v11, :cond_1c

    .line 1156
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1158
    :cond_1c
    return v11

    .line 1013
    :pswitch_1d
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1016
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-nez v17, :cond_7e

    .line 1018
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1024
    :goto_42
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1025
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1026
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1027
    .local v6, children:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_53
    if-ge v9, v7, :cond_88

    .line 1028
    aget-object v5, v6, v9

    .line 1029
    .local v5, child:Landroid/view/View;
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1030
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v17

    if-nez v17, :cond_7b

    .line 1031
    aget-object v17, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v8

    .line 1032
    .local v8, handled:Z
    if-eqz v8, :cond_7b

    .line 1033
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 1027
    .end local v8           #handled:Z
    :cond_7b
    add-int/lit8 v9, v9, 0x1

    goto :goto_53

    .line 1020
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    goto :goto_42

    .line 1039
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_88
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1040
    const/4 v11, 0x1

    goto :goto_16

    .line 1046
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :pswitch_92
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    if-eqz v17, :cond_dd

    .line 1047
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_a4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1049
    .restart local v5       #child:Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1050
    iget v0, v5, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x4

    move/from16 v0, v17

    iput v0, v5, Landroid/view/View;->mPrivateFlags2:I

    .line 1051
    invoke-virtual {v5}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_a4

    .line 1054
    .end local v5           #child:Landroid/view/View;
    :cond_c3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/HashSet;->clear()V

    .line 1055
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/view/DragEvent;->recycle()V

    .line 1056
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1061
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_dd
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1062
    const/4 v11, 0x1

    goto/16 :goto_16

    .line 1068
    :pswitch_e8
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1076
    .local v13, target:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    if-eq v0, v13, :cond_169

    .line 1077
    invoke-virtual {v12, v13}, Landroid/view/ViewRootImpl;->setDragFocus(Landroid/view/View;)V

    .line 1079
    move-object/from16 v0, p1

    iget v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1081
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_145

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1083
    .local v16, view:Landroid/view/View;
    const/16 v17, 0x6

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1084
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1085
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1086
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1088
    .end local v16           #view:Landroid/view/View;
    :cond_145
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 1091
    if-eqz v13, :cond_165

    .line 1092
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 1093
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1094
    iget v0, v13, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    or-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    iput v0, v13, Landroid/view/View;->mPrivateFlags2:I

    .line 1095
    invoke-virtual {v13}, Landroid/view/View;->refreshDrawableState()V

    .line 1097
    :cond_165
    move-object/from16 v0, p1

    iput v4, v0, Landroid/view/DragEvent;->mAction:I

    .line 1101
    .end local v4           #action:I
    :cond_169
    if-eqz v13, :cond_16

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1105
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1107
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1108
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_16

    .line 1125
    .end local v13           #target:Landroid/view/View;
    :pswitch_19f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1127
    .restart local v16       #view:Landroid/view/View;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1128
    move-object/from16 v0, v16

    iget v0, v0, Landroid/view/View;->mPrivateFlags2:I

    move/from16 v17, v0

    and-int/lit8 v17, v17, -0x3

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Landroid/view/View;->mPrivateFlags2:I

    .line 1129
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->refreshDrawableState()V

    .line 1131
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_16

    .line 1137
    .end local v16           #view:Landroid/view/View;
    :pswitch_1cf
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1138
    .restart local v13       #target:Landroid/view/View;
    if-eqz v13, :cond_16

    .line 1140
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1141
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1142
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1143
    move-object/from16 v0, p1

    iput v14, v0, Landroid/view/DragEvent;->mX:F

    .line 1144
    move-object/from16 v0, p1

    iput v15, v0, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_16

    .line 1010
    nop

    :pswitch_data_224
    .packed-switch 0x1
        :pswitch_1d
        :pswitch_e8
        :pswitch_1cf
        :pswitch_92
        :pswitch_16
        :pswitch_19f
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 2431
    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2432
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2433
    .local v8, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2435
    .local v17, flags:I
    and-int/lit8 v22, v17, 0x8

    if-eqz v22, :cond_ce

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_ce

    .line 2436
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_67

    const/4 v6, 0x1

    .line 2438
    .local v6, cache:Z
    :goto_29
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v22

    if-nez v22, :cond_69

    const/4 v5, 0x1

    .line 2439
    .local v5, buildCache:Z
    :goto_30
    const/16 v18, 0x0

    .local v18, i:I
    :goto_32
    move/from16 v0, v18

    if-ge v0, v11, :cond_6b

    .line 2440
    aget-object v7, v8, v18

    .line 2441
    .local v7, child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_64

    .line 2442
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2443
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-virtual {v0, v7, v1, v2, v11}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 2444
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 2445
    if-eqz v6, :cond_64

    .line 2446
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2447
    if-eqz v5, :cond_64

    .line 2448
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v7, v0}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2439
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_64
    add-int/lit8 v18, v18, 0x1

    goto :goto_32

    .line 2436
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v7           #child:Landroid/view/View;
    .end local v18           #i:I
    :cond_67
    const/4 v6, 0x0

    goto :goto_29

    .line 2438
    .restart local v6       #cache:Z
    :cond_69
    const/4 v5, 0x0

    goto :goto_30

    .line 2454
    .restart local v5       #buildCache:Z
    .restart local v18       #i:I
    :cond_6b
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 2455
    .local v10, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_87

    .line 2456
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2459
    :cond_87
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 2461
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2462
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2464
    if-eqz v6, :cond_b9

    .line 2465
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2468
    :cond_b9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_ce

    .line 2469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 2473
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v10           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v18           #i:I
    :cond_ce
    const/16 v21, 0x0

    .line 2474
    .local v21, saveCount:I
    and-int/lit8 v22, v17, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_193

    const/4 v9, 0x1

    .line 2475
    .local v9, clipToPadding:Z
    :goto_db
    if-eqz v9, :cond_146

    .line 2476
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 2477
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2484
    :cond_146
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2485
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2487
    const/16 v19, 0x0

    .line 2488
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    .line 2490
    .local v14, drawingTime:J
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_196

    .line 2491
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_172
    move/from16 v0, v18

    if-ge v0, v11, :cond_1c1

    .line 2492
    aget-object v7, v8, v18

    .line 2493
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_186

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_190

    .line 2494
    :cond_186
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2491
    :cond_190
    add-int/lit8 v18, v18, 0x1

    goto :goto_172

    .line 2474
    .end local v7           #child:Landroid/view/View;
    .end local v9           #clipToPadding:Z
    .end local v14           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #more:Z
    :cond_193
    const/4 v9, 0x0

    goto/16 :goto_db

    .line 2498
    .restart local v9       #clipToPadding:Z
    .restart local v14       #drawingTime:J
    .restart local v19       #more:Z
    :cond_196
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_198
    move/from16 v0, v18

    if-ge v0, v11, :cond_1c1

    .line 2499
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v11, v1}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v7, v8, v22

    .line 2500
    .restart local v7       #child:Landroid/view/View;
    iget v0, v7, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_1b4

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_1be

    .line 2501
    :cond_1b4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2498
    :cond_1be
    add-int/lit8 v18, v18, 0x1

    goto :goto_198

    .line 2507
    .end local v7           #child:Landroid/view/View;
    :cond_1c1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1ec

    .line 2508
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 2509
    .local v12, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    add-int/lit8 v13, v22, -0x1

    .line 2511
    .local v13, disappearingCount:I
    move/from16 v18, v13

    :goto_1d5
    if-ltz v18, :cond_1ec

    .line 2512
    move/from16 v0, v18

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2513
    .restart local v7       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v7, v14, v15}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2511
    add-int/lit8 v18, v18, -0x1

    goto :goto_1d5

    .line 2517
    .end local v7           #child:Landroid/view/View;
    .end local v12           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13           #disappearingCount:I
    :cond_1ec
    if-eqz v9, :cond_1f5

    .line 2518
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2522
    :cond_1f5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2524
    and-int/lit8 v22, v17, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_20e

    .line 2525
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2528
    :cond_20e
    and-int/lit8 v22, v17, 0x10

    if-nez v22, :cond_24a

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_24a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_24a

    if-nez v19, :cond_24a

    .line 2533
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2534
    new-instance v16, Landroid/view/ViewGroup$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 2539
    .local v16, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2541
    .end local v16           #end:Ljava/lang/Runnable;
    :cond_24a
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 5

    .prologue
    .line 2189
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2190
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2191
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2192
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 2193
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 2192
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2195
    :cond_12
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2315
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2316
    return-void
.end method

.method protected dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1566
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1567
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericFocusedEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1571
    :goto_c
    return v0

    .line 1568
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1569
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    .line 1571
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .parameter "event"

    .prologue
    .line 1537
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1538
    .local v2, childrenCount:I
    if-eqz v2, :cond_2c

    .line 1539
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1540
    .local v1, children:[Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    .line 1541
    .local v4, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1543
    .local v5, y:F
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_10
    if-ltz v3, :cond_2c

    .line 1544
    aget-object v0, v1, v3

    .line 1545
    .local v0, child:Landroid/view/View;
    invoke-static {v0}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v0, v6}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v6

    if-nez v6, :cond_24

    .line 1543
    :cond_21
    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    .line 1550
    :cond_24
    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 1551
    const/4 v6, 0x1

    .line 1557
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #i:I
    .end local v4           #x:F
    .end local v5           #y:F
    :goto_2b
    return v6

    :cond_2c
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_2b
.end method

.method protected dispatchGetDisplayList()V
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/high16 v7, -0x8000

    .line 2594
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2595
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2596
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_38

    .line 2597
    aget-object v0, v1, v3

    .line 2598
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_33

    :cond_18
    invoke-virtual {v0}, Landroid/view/View;->hasStaticLayer()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 2600
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v7

    if-ne v4, v7, :cond_36

    const/4 v4, 0x1

    :goto_24
    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2601
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v6, 0x7fffffff

    and-int/2addr v4, v6

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2602
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 2603
    iput-boolean v5, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2596
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_36
    move v4, v5

    .line 2600
    goto :goto_24

    .line 2606
    .end local v0           #child:Landroid/view/View;
    :cond_38
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 24
    .parameter "event"

    .prologue
    .line 1302
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1305
    .local v4, action:I
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    .line 1306
    .local v13, interceptHover:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1308
    move-object/from16 v8, p1

    .line 1309
    .local v8, eventNoHistory:Landroid/view/MotionEvent;
    const/4 v10, 0x0

    .line 1313
    .local v10, handled:Z
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1314
    .local v9, firstOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    .line 1315
    if-nez v13, :cond_79

    const/16 v21, 0xa

    move/from16 v0, v21

    if-eq v4, v0, :cond_79

    .line 1316
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 1317
    .local v19, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 1318
    .local v20, y:F
    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1319
    .local v7, childrenCount:I
    if-eqz v7, :cond_79

    .line 1320
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1321
    .local v6, children:[Landroid/view/View;
    const/4 v14, 0x0

    .line 1322
    .local v14, lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    add-int/lit8 v12, v7, -0x1

    .local v12, i:I
    :goto_39
    if-ltz v12, :cond_79

    .line 1323
    aget-object v5, v6, v12

    .line 1324
    .local v5, child:Landroid/view/View;
    invoke-static {v5}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v21

    if-eqz v21, :cond_53

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v5, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v21

    if-nez v21, :cond_56

    .line 1322
    :cond_53
    add-int/lit8 v12, v12, -0x1

    goto :goto_39

    .line 1331
    :cond_56
    move-object v11, v9

    .line 1333
    .local v11, hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    const/16 v17, 0x0

    .line 1334
    .local v17, predecessor:Landroid/view/ViewGroup$HoverTarget;
    :goto_59
    if-nez v11, :cond_97

    .line 1335
    invoke-static {v5}, Landroid/view/ViewGroup$HoverTarget;->obtain(Landroid/view/View;)Landroid/view/ViewGroup$HoverTarget;

    move-result-object v11

    .line 1336
    const/16 v18, 0x0

    .line 1356
    .local v18, wasHovered:Z
    :goto_61
    if-eqz v14, :cond_bc

    .line 1357
    iput-object v11, v14, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1364
    :goto_65
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_c2

    .line 1365
    if-nez v18, :cond_77

    .line 1367
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1386
    :cond_77
    :goto_77
    if-eqz v10, :cond_53

    .line 1394
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_79
    :goto_79
    if-eqz v9, :cond_116

    .line 1395
    iget-object v5, v9, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    .line 1398
    .restart local v5       #child:Landroid/view/View;
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_f4

    .line 1400
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1416
    :goto_8d
    iget-object v0, v9, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v16, v0

    .line 1417
    .local v16, nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    invoke-virtual {v9}, Landroid/view/ViewGroup$HoverTarget;->recycle()V

    .line 1418
    move-object/from16 v9, v16

    .line 1419
    goto :goto_79

    .line 1340
    .end local v16           #nextOldHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #childrenCount:I
    .restart local v11       #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v12       #i:I
    .restart local v14       #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .restart local v17       #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .restart local v19       #x:F
    .restart local v20       #y:F
    :cond_97
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->child:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    if-ne v0, v5, :cond_b7

    .line 1341
    if-eqz v17, :cond_b4

    .line 1342
    iget-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1346
    :goto_ab
    const/16 v21, 0x0

    move-object/from16 v0, v21

    iput-object v0, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    .line 1347
    const/16 v18, 0x1

    .line 1348
    .restart local v18       #wasHovered:Z
    goto :goto_61

    .line 1344
    .end local v18           #wasHovered:Z
    :cond_b4
    iget-object v9, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_ab

    .line 1351
    :cond_b7
    move-object/from16 v17, v11

    .line 1352
    iget-object v11, v11, Landroid/view/ViewGroup$HoverTarget;->next:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_59

    .line 1359
    .restart local v18       #wasHovered:Z
    :cond_bc
    move-object v14, v11

    .line 1360
    move-object/from16 v0, p0

    iput-object v11, v0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    goto :goto_65

    .line 1370
    :cond_c2
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_77

    .line 1371
    if-nez v18, :cond_e9

    .line 1373
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1374
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1375
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1377
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1379
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_77

    .line 1383
    :cond_e9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result v21

    or-int v10, v10, v21

    goto :goto_77

    .line 1405
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #childrenCount:I
    .end local v11           #hoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v12           #i:I
    .end local v14           #lastHoverTarget:Landroid/view/ViewGroup$HoverTarget;
    .end local v17           #predecessor:Landroid/view/ViewGroup$HoverTarget;
    .end local v18           #wasHovered:Z
    .end local v19           #x:F
    .end local v20           #y:F
    :cond_f4
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_101

    .line 1406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1409
    :cond_101
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1410
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1411
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v5}, Landroid/view/ViewGroup;->dispatchTransformedGenericPointerEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    .line 1413
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto/16 :goto_8d

    .line 1422
    .end local v5           #child:Landroid/view/View;
    :cond_116
    if-nez v10, :cond_133

    const/4 v15, 0x1

    .line 1423
    .local v15, newHoveredSelf:Z
    :goto_119
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    move/from16 v0, v21

    if-ne v15, v0, :cond_135

    .line 1424
    if-eqz v15, :cond_12b

    .line 1426
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1468
    :cond_12b
    :goto_12b
    move-object/from16 v0, p1

    if-eq v8, v0, :cond_132

    .line 1469
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 1473
    :cond_132
    return v10

    .line 1422
    .end local v15           #newHoveredSelf:Z
    :cond_133
    const/4 v15, 0x0

    goto :goto_119

    .line 1429
    .restart local v15       #newHoveredSelf:Z
    :cond_135
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mHoveredSelf:Z

    move/from16 v21, v0

    if-eqz v21, :cond_151

    .line 1431
    const/16 v21, 0xa

    move/from16 v0, v21

    if-ne v4, v0, :cond_168

    .line 1433
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1445
    :goto_149
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    .line 1448
    :cond_151
    if-eqz v15, :cond_12b

    .line 1450
    const/16 v21, 0x9

    move/from16 v0, v21

    if-ne v4, v0, :cond_185

    .line 1452
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1453
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto :goto_12b

    .line 1437
    :cond_168
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_171

    .line 1438
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1440
    :cond_171
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1441
    const/16 v21, 0xa

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1442
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 1443
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_149

    .line 1454
    :cond_185
    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_12b

    .line 1456
    invoke-static {v8}, Landroid/view/ViewGroup;->obtainMotionEventNoHistoryOrSelf(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 1457
    const/16 v21, 0x9

    move/from16 v0, v21

    invoke-virtual {v8, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1458
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1459
    invoke-virtual {v8, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1461
    move-object/from16 v0, p0

    invoke-super {v0, v8}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    or-int v10, v10, v21

    .line 1462
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mHoveredSelf:Z

    goto/16 :goto_12b
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1238
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_a

    .line 1239
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 1242
    :cond_a
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_19

    .line 1243
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1255
    :cond_18
    :goto_18
    return v0

    .line 1246
    :cond_19
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2f

    .line 1247
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1252
    :cond_2f
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_38

    .line 1253
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1255
    :cond_38
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1225
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1226
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1230
    :goto_c
    return v0

    .line 1227
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1228
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 1230
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1263
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1264
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1268
    :goto_c
    return v0

    .line 1265
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1266
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 1268
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 7
    .parameter "event"

    .prologue
    .line 2217
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEventInternal(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 2218
    .local v2, handled:Z
    if-eqz v2, :cond_8

    move v4, v2

    .line 2231
    :goto_7
    return v4

    .line 2222
    :cond_8
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, count:I
    :goto_d
    if-ge v3, v1, :cond_28

    .line 2223
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2224
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_25

    .line 2225
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    .line 2226
    if-eqz v2, :cond_25

    move v4, v2

    .line 2227
    goto :goto_7

    .line 2222
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2231
    .end local v0           #child:Landroid/view/View;
    :cond_28
    const/4 v4, 0x0

    goto :goto_7
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2323
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2324
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2325
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2326
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v2, :cond_19

    .line 2327
    aget-object v0, v1, v3

    .line 2328
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 2329
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2326
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2332
    .end local v0           #c:Landroid/view/View;
    :cond_19
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2295
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2296
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2297
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2298
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v2, :cond_19

    .line 2299
    aget-object v0, v1, v3

    .line 2300
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 2301
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2298
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2304
    .end local v0           #c:Landroid/view/View;
    :cond_19
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .registers 6
    .parameter "activated"

    .prologue
    .line 3017
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3018
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3019
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 3020
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 3019
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3022
    :cond_f
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 6
    .parameter "pressed"

    .prologue
    .line 3026
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3027
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3028
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 3029
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 3028
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3031
    :cond_f
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 6
    .parameter "selected"

    .prologue
    .line 3005
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3006
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3007
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 3008
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 3007
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3010
    :cond_f
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 5

    .prologue
    .line 2174
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2175
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2176
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2177
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 2178
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 2177
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 2180
    :cond_12
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 6
    .parameter "visible"

    .prologue
    .line 1198
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1200
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1201
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1202
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_12

    .line 1203
    aget-object v0, v1, v3

    .line 1204
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1202
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1206
    .end local v0           #child:Landroid/view/View;
    :cond_12
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2343
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2344
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 30
    .parameter "ev"

    .prologue
    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_19

    .line 1607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 1610
    :cond_19
    const/4 v14, 0x0

    .line 1611
    .local v14, handled:Z
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v26

    if-eqz v26, :cond_199

    .line 1612
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 1613
    .local v4, action:I
    and-int/lit16 v6, v4, 0xff

    .line 1616
    .local v6, actionMasked:I
    if-nez v6, :cond_2e

    .line 1620
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 1621
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1626
    :cond_2e
    if-eqz v6, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_df

    .line 1628
    :cond_38
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x8

    and-int v26, v26, v27

    if-eqz v26, :cond_d8

    const/4 v13, 0x1

    .line 1629
    .local v13, disallowIntercept:Z
    :goto_45
    if-nez v13, :cond_db

    .line 1630
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 1631
    .local v18, intercepted:Z
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1642
    .end local v13           #disallowIntercept:Z
    :goto_50
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_60

    const/16 v26, 0x3

    move/from16 v0, v26

    if-ne v6, v0, :cond_e3

    :cond_60
    const/4 v9, 0x1

    .line 1646
    .local v9, canceled:Z
    :goto_61
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v26, v0

    const/high16 v27, 0x20

    and-int v26, v26, v27

    if-eqz v26, :cond_e6

    const/16 v22, 0x1

    .line 1648
    .local v22, split:Z
    :goto_6f
    sget-boolean v26, Landroid/view/ViewGroup;->bForceSplit:Z

    if-eqz v26, :cond_75

    .line 1649
    const/16 v22, 0x1

    .line 1651
    :cond_75
    const/16 v19, 0x0

    .line 1652
    .local v19, newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v7, 0x0

    .line 1653
    .local v7, alreadyDispatchedToNewTouchTarget:Z
    if-nez v9, :cond_170

    if-nez v18, :cond_170

    .line 1654
    if-eqz v6, :cond_8c

    if-eqz v22, :cond_86

    const/16 v26, 0x5

    move/from16 v0, v26

    if-eq v6, v0, :cond_8c

    :cond_86
    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_170

    .line 1657
    :cond_8c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1658
    .local v5, actionIndex:I
    if-eqz v22, :cond_e9

    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v16, v26, v27

    .line 1663
    .local v16, idBitsToAssign:I
    :goto_9c
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 1665
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1666
    .local v12, childrenCount:I
    if-eqz v12, :cond_102

    .line 1669
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1670
    .local v11, children:[Landroid/view/View;
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v24

    .line 1671
    .local v24, x:F
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v25

    .line 1673
    .local v25, y:F
    add-int/lit8 v15, v12, -0x1

    .local v15, i:I
    :goto_bb
    if-ltz v15, :cond_102

    .line 1674
    aget-object v10, v11, v15

    .line 1675
    .local v10, child:Landroid/view/View;
    invoke-static {v10}, Landroid/view/ViewGroup;->canViewReceivePointerEvents(Landroid/view/View;)Z

    move-result v26

    if-eqz v26, :cond_d5

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    move-object/from16 v3, v26

    invoke-virtual {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v26

    if-nez v26, :cond_ec

    .line 1673
    :cond_d5
    add-int/lit8 v15, v15, -0x1

    goto :goto_bb

    .line 1628
    .end local v5           #actionIndex:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v12           #childrenCount:I
    .end local v15           #i:I
    .end local v16           #idBitsToAssign:I
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_d8
    const/4 v13, 0x0

    goto/16 :goto_45

    .line 1633
    .restart local v13       #disallowIntercept:Z
    :cond_db
    const/16 v18, 0x0

    .restart local v18       #intercepted:Z
    goto/16 :goto_50

    .line 1638
    .end local v13           #disallowIntercept:Z
    .end local v18           #intercepted:Z
    :cond_df
    const/16 v18, 0x1

    .restart local v18       #intercepted:Z
    goto/16 :goto_50

    .line 1642
    :cond_e3
    const/4 v9, 0x0

    goto/16 :goto_61

    .line 1646
    .restart local v9       #canceled:Z
    :cond_e6
    const/16 v22, 0x0

    goto :goto_6f

    .line 1658
    .restart local v5       #actionIndex:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_e9
    const/16 v16, -0x1

    goto :goto_9c

    .line 1680
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v12       #childrenCount:I
    .restart local v15       #i:I
    .restart local v16       #idBitsToAssign:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_ec
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 1681
    if-eqz v19, :cond_121

    .line 1684
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1702
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_102
    :goto_102
    if-nez v19, :cond_170

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_170

    .line 1705
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    .line 1706
    :goto_112
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-eqz v26, :cond_162

    .line 1707
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v19, v0

    goto :goto_112

    .line 1688
    .restart local v10       #child:Landroid/view/View;
    .restart local v11       #children:[Landroid/view/View;
    .restart local v15       #i:I
    .restart local v24       #x:F
    .restart local v25       #y:F
    :cond_121
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1689
    const/16 v26, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v26

    move/from16 v3, v16

    invoke-direct {v0, v1, v2, v10, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_d5

    .line 1691
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 1692
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 1693
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 1694
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 1695
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v10, v1}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v19

    .line 1696
    const/4 v7, 0x1

    .line 1697
    goto :goto_102

    .line 1709
    .end local v10           #child:Landroid/view/View;
    .end local v11           #children:[Landroid/view/View;
    .end local v15           #i:I
    .end local v24           #x:F
    .end local v25           #y:F
    :cond_162
    move-object/from16 v0, v19

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v26, v0

    or-int v26, v26, v16

    move/from16 v0, v26

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1715
    .end local v5           #actionIndex:I
    .end local v12           #childrenCount:I
    .end local v16           #idBitsToAssign:I
    :cond_170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v26, v0

    if-nez v26, :cond_1b5

    .line 1717
    const/16 v26, 0x0

    const/16 v27, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v9, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v14

    .line 1752
    :cond_188
    if-nez v9, :cond_196

    const/16 v26, 0x1

    move/from16 v0, v26

    if-eq v6, v0, :cond_196

    const/16 v26, 0x7

    move/from16 v0, v26

    if-ne v6, v0, :cond_21a

    .line 1755
    :cond_196
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1763
    .end local v4           #action:I
    .end local v6           #actionMasked:I
    .end local v7           #alreadyDispatchedToNewTouchTarget:Z
    .end local v9           #canceled:Z
    .end local v18           #intercepted:Z
    .end local v19           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #split:Z
    :cond_199
    :goto_199
    if-nez v14, :cond_1b4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1b4

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1766
    :cond_1b4
    return v14

    .line 1722
    .restart local v4       #action:I
    .restart local v6       #actionMasked:I
    .restart local v7       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v9       #canceled:Z
    .restart local v18       #intercepted:Z
    .restart local v19       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v22       #split:Z
    :cond_1b5
    const/16 v21, 0x0

    .line 1723
    .local v21, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v23, v0

    .line 1724
    .local v23, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1bd
    if-eqz v23, :cond_188

    .line 1725
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    .line 1726
    .local v20, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v7, :cond_1d3

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_1d3

    .line 1727
    const/4 v14, 0x1

    .line 1746
    :cond_1ce
    move-object/from16 v21, v23

    .line 1747
    move-object/from16 v23, v20

    .line 1748
    goto :goto_1bd

    .line 1729
    :cond_1d3
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v26

    if-nez v26, :cond_1e5

    if-eqz v18, :cond_211

    :cond_1e5
    const/4 v8, 0x1

    .line 1731
    .local v8, cancelChild:Z
    :goto_1e6
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move/from16 v3, v27

    invoke-direct {v0, v1, v8, v2, v3}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v26

    if-eqz v26, :cond_201

    .line 1733
    const/4 v14, 0x1

    .line 1735
    :cond_201
    if-eqz v8, :cond_1ce

    .line 1736
    if-nez v21, :cond_213

    .line 1737
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1741
    :goto_20b
    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1742
    move-object/from16 v23, v20

    .line 1743
    goto :goto_1bd

    .line 1729
    .end local v8           #cancelChild:Z
    :cond_211
    const/4 v8, 0x0

    goto :goto_1e6

    .line 1739
    .restart local v8       #cancelChild:Z
    :cond_213
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_20b

    .line 1756
    .end local v8           #cancelChild:Z
    .end local v20           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v21           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_21a
    if-eqz v22, :cond_199

    const/16 v26, 0x6

    move/from16 v0, v26

    if-ne v6, v0, :cond_199

    .line 1757
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 1758
    .restart local v5       #actionIndex:I
    const/16 v26, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v27

    shl-int v17, v26, v27

    .line 1759
    .local v17, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_199
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 1276
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_a

    .line 1277
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 1280
    :cond_a
    iget v1, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x12

    const/16 v2, 0x12

    if-ne v1, v2, :cond_19

    .line 1281
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1293
    :cond_18
    :goto_18
    return v0

    .line 1284
    :cond_19
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v1, v1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_2f

    .line 1285
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 1290
    :cond_2f
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_38

    .line 1291
    iget-object v1, p0, Landroid/view/View;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v0}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 1293
    :cond_38
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 656
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 7
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 929
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 930
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 931
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 932
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 933
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 932
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 935
    :cond_12
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 6
    .parameter "hasFocus"

    .prologue
    .line 852
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 853
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 854
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 855
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 856
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 855
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 858
    :cond_12
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 942
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 943
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 944
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 945
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 946
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 945
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 948
    :cond_12
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 67
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 2620
    const/16 v47, 0x0

    .line 2622
    .local v47, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v32, v0

    .line 2623
    .local v32, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v35, v0

    .line 2624
    .local v35, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v34, v0

    .line 2625
    .local v34, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v30, v0

    .line 2627
    .local v30, cb:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v31

    .line 2629
    .local v31, childHasIdentityMatrix:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v37, v0

    .line 2631
    .local v37, flags:I
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x100

    const/16 v7, 0x100

    if-ne v6, v7, :cond_3d

    .line 2632
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 2633
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, -0x101

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2636
    :cond_3d
    const/16 v60, 0x0

    .line 2638
    .local v60, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2639
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v33, 0x0

    .line 2641
    .local v33, concatMatrix:Z
    const/16 v51, 0x0

    .line 2643
    .local v51, scalingRequired:Z
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eqz v6, :cond_12a

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayerType()I

    move-result v45

    .line 2645
    .local v45, layerType:I
    :goto_51
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v38

    .line 2646
    .local v38, hardwareAccelerated:Z
    const v6, 0x8000

    and-int v6, v6, v37

    const v7, 0x8000

    if-eq v6, v7, :cond_67

    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x4000

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_12e

    .line 2648
    :cond_67
    const/16 v29, 0x1

    .line 2649
    .local v29, caching:Z
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_77

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v6, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v51, v0

    .line 2654
    :cond_77
    :goto_77
    if-eqz v5, :cond_1ad

    .line 2655
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v42

    .line 2656
    .local v42, initialized:Z
    if-nez v42, :cond_9a

    .line 2657
    sub-int v6, v34, v32

    sub-int v7, v30, v35

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2658
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 2659
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 2662
    :cond_9a
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    if-eqz v51, :cond_139

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    :goto_a6
    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1, v7, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v47

    .line 2664
    if-eqz v51, :cond_13d

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v6, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v7, 0x3f80

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_13d

    .line 2665
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    if-nez v6, :cond_c9

    .line 2666
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 2668
    :cond_c9
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 2669
    .local v11, invalidationTransform:Landroid/view/animation/Transformation;
    const/high16 v6, 0x3f80

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1, v11, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 2673
    :goto_d4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v60, v0

    .line 2675
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v33

    .line 2677
    if-eqz v47, :cond_f8

    .line 2678
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_15e

    .line 2679
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x90

    const/16 v7, 0x80

    if-ne v6, v7, :cond_142

    .line 2681
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v6, v6, 0x4

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2716
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    :cond_f8
    :goto_f8
    if-nez v31, :cond_1e7

    const/4 v6, 0x1

    :goto_fb
    or-int v33, v33, v6

    .line 2720
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x20

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2722
    if-nez v33, :cond_1ea

    move/from16 v0, v32

    int-to-float v13, v0

    move/from16 v0, v35

    int-to-float v14, v0

    move/from16 v0, v34

    int-to-float v15, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_1ea

    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_1ea

    .line 2946
    :goto_129
    return v47

    .line 2643
    .end local v29           #caching:Z
    .end local v38           #hardwareAccelerated:Z
    .end local v45           #layerType:I
    :cond_12a
    const/16 v45, 0x0

    goto/16 :goto_51

    .line 2651
    .restart local v38       #hardwareAccelerated:Z
    .restart local v45       #layerType:I
    :cond_12e
    if-nez v45, :cond_132

    if-eqz v38, :cond_136

    :cond_132
    const/16 v29, 0x1

    .restart local v29       #caching:Z
    :goto_134
    goto/16 :goto_77

    .end local v29           #caching:Z
    :cond_136
    const/16 v29, 0x0

    goto :goto_134

    .line 2662
    .restart local v29       #caching:Z
    .restart local v42       #initialized:Z
    :cond_139
    const/high16 v6, 0x3f80

    goto/16 :goto_a6

    .line 2671
    :cond_13d
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .restart local v11       #invalidationTransform:Landroid/view/animation/Transformation;
    goto :goto_d4

    .line 2682
    :cond_142
    and-int/lit8 v6, v37, 0x4

    if-nez v6, :cond_f8

    .line 2685
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x40

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2686
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v35

    move/from16 v3, v34

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_f8

    .line 2689
    :cond_15e
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    if-nez v6, :cond_16d

    .line 2690
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 2692
    :cond_16d
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 2693
    .local v10, region:Landroid/graphics/RectF;
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 2697
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v6, v6, 0x40

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2699
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v46, v32, v6

    .line 2700
    .local v46, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v56, v35, v6

    .line 2701
    .local v56, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x3f00

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int v6, v6, v46

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    add-int v7, v7, v56

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_f8

    .line 2705
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    .end local v46           #left:I
    .end local v56           #top:I
    :cond_1ad
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x800

    const/16 v7, 0x800

    if-ne v6, v7, :cond_f8

    .line 2707
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v41

    .line 2708
    .local v41, hasTransform:Z
    if-eqz v41, :cond_f8

    .line 2709
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v61

    .line 2710
    .local v61, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v61

    if-eq v0, v6, :cond_1e1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v60, v0

    .line 2712
    :goto_1d7
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v61

    if-eqz v6, :cond_1e4

    const/16 v33, 0x1

    :goto_1df
    goto/16 :goto_f8

    .line 2710
    :cond_1e1
    const/16 v60, 0x0

    goto :goto_1d7

    .line 2712
    :cond_1e4
    const/16 v33, 0x0

    goto :goto_1df

    .line 2716
    .end local v41           #hasTransform:Z
    .end local v61           #transformType:I
    :cond_1e7
    const/4 v6, 0x0

    goto/16 :goto_fb

    .line 2727
    :cond_1ea
    if-eqz v38, :cond_208

    .line 2730
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_3f9

    const/4 v6, 0x1

    :goto_1f8
    move-object/from16 v0, p2

    iput-boolean v6, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2731
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2734
    :cond_208
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 2736
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v54, v0

    .line 2737
    .local v54, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v55, v0

    .line 2739
    .local v55, sy:I
    const/16 v36, 0x0

    .line 2740
    .local v36, displayList:Landroid/view/DisplayList;
    const/16 v27, 0x0

    .line 2741
    .local v27, cache:Landroid/graphics/Bitmap;
    const/16 v39, 0x0

    .line 2742
    .local v39, hasDisplayList:Z
    if-eqz v29, :cond_232

    .line 2743
    if-nez v38, :cond_3fc

    .line 2744
    if-eqz v45, :cond_22b

    .line 2745
    const/16 v45, 0x1

    .line 2746
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2748
    :cond_22b
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2764
    :cond_232
    :goto_232
    if-eqz v27, :cond_236

    if-eqz v39, :cond_416

    :cond_236
    const/16 v40, 0x1

    .line 2765
    .local v40, hasNoCache:Z
    :goto_238
    if-nez v27, :cond_41a

    if-nez v39, :cond_41a

    const/4 v6, 0x2

    move/from16 v0, v45

    if-eq v0, v6, :cond_41a

    const/16 v48, 0x1

    .line 2768
    .local v48, offsetForScroll:Z
    :goto_243
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v49

    .line 2769
    .local v49, restoreTo:I
    if-eqz v48, :cond_41e

    .line 2770
    sub-int v6, v32, v54

    int-to-float v6, v6

    sub-int v7, v35, v55

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2780
    :cond_254
    :goto_254
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v26

    .line 2781
    .local v26, alpha:F
    if-nez v60, :cond_266

    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-ltz v6, :cond_266

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_455

    .line 2782
    :cond_266
    if-nez v60, :cond_26a

    if-nez v31, :cond_2e6

    .line 2783
    :cond_26a
    const/16 v57, 0x0

    .line 2784
    .local v57, transX:I
    const/16 v58, 0x0

    .line 2786
    .local v58, transY:I
    if-eqz v48, :cond_27a

    .line 2787
    move/from16 v0, v54

    neg-int v0, v0

    move/from16 v57, v0

    .line 2788
    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v58, v0

    .line 2791
    :cond_27a
    if-eqz v60, :cond_2c3

    .line 2792
    if-eqz v33, :cond_2a9

    .line 2795
    move/from16 v0, v57

    neg-int v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2796
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2797
    move/from16 v0, v57

    int-to-float v6, v0

    move/from16 v0, v58

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2798
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2801
    :cond_2a9
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v59

    .line 2802
    .local v59, transformAlpha:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v59, v6

    if-gez v6, :cond_2c3

    .line 2803
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    mul-float v26, v26, v6

    .line 2804
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2808
    .end local v59           #transformAlpha:F
    :cond_2c3
    if-nez v31, :cond_2e6

    .line 2809
    move/from16 v0, v57

    neg-int v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2810
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2811
    move/from16 v0, v57

    int-to-float v6, v0

    move/from16 v0, v58

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2815
    .end local v57           #transX:I
    .end local v58           #transY:I
    :cond_2e6
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_335

    .line 2816
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x100

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2817
    if-eqz v40, :cond_335

    .line 2818
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v0, v6

    move/from16 v17, v0

    .line 2819
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_448

    .line 2820
    const/16 v18, 0x4

    .line 2821
    .local v18, layerFlags:I
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_312

    if-eqz v45, :cond_314

    .line 2823
    :cond_312
    or-int/lit8 v18, v18, 0x10

    .line 2825
    :cond_314
    if-nez v45, :cond_335

    .line 2826
    if-eqz v39, :cond_440

    const/16 v52, 0x0

    .line 2827
    .local v52, scrollX:I
    :goto_31a
    if-eqz v39, :cond_444

    const/16 v53, 0x0

    .line 2828
    .local v53, scrollY:I
    :goto_31e
    move/from16 v0, v52

    int-to-float v13, v0

    move/from16 v0, v53

    int-to-float v14, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    int-to-float v15, v6

    add-int v6, v53, v30

    sub-int v6, v6, v35

    int-to-float v0, v6

    move/from16 v16, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2842
    .end local v17           #multipliedAlpha:I
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_335
    :goto_335
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_34d

    .line 2843
    if-eqz v48, :cond_475

    .line 2844
    sub-int v6, v34, v32

    add-int v6, v6, v54

    sub-int v7, v30, v35

    add-int v7, v7, v55

    move-object/from16 v0, p1

    move/from16 v1, v54

    move/from16 v2, v55

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2854
    :cond_34d
    :goto_34d
    if-eqz v39, :cond_35d

    .line 2855
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v36

    .line 2856
    invoke-virtual/range {v36 .. v36}, Landroid/view/DisplayList;->isValid()Z

    move-result v6

    if-nez v6, :cond_35d

    .line 2860
    const/16 v36, 0x0

    .line 2861
    const/16 v39, 0x0

    .line 2865
    :cond_35d
    if-eqz v40, :cond_4f1

    .line 2866
    const/16 v44, 0x0

    .line 2867
    .local v44, layerRendered:Z
    const/4 v6, 0x2

    move/from16 v0, v45

    if-ne v0, v6, :cond_38f

    .line 2868
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v43

    .line 2869
    .local v43, layer:Landroid/view/HardwareLayer;
    if-eqz v43, :cond_497

    invoke-virtual/range {v43 .. v43}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v6

    if-eqz v6, :cond_497

    .line 2870
    move-object/from16 v0, p2

    iget-object v6, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    const/high16 v7, 0x437f

    mul-float v7, v7, v26

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    move-object/from16 v6, p1

    .line 2871
    check-cast v6, Landroid/view/HardwareCanvas;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p2

    iget-object v9, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v43

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 2872
    const/16 v44, 0x1

    .line 2882
    .end local v43           #layer:Landroid/view/HardwareLayer;
    :cond_38f
    :goto_38f
    if-nez v44, :cond_3b0

    .line 2883
    if-nez v39, :cond_4d5

    .line 2885
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_4cc

    .line 2889
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2890
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2924
    .end local v44           #layerRendered:Z
    :cond_3b0
    :goto_3b0
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2926
    if-eqz v5, :cond_3d1

    if-nez v47, :cond_3d1

    .line 2927
    if-nez v38, :cond_3ca

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v6

    if-nez v6, :cond_3ca

    .line 2928
    const/16 v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->onSetAlpha(I)Z

    .line 2930
    :cond_3ca
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v5}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 2933
    :cond_3d1
    if-eqz v47, :cond_3f2

    if-eqz v38, :cond_3f2

    .line 2937
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2938
    invoke-virtual {v5}, Landroid/view/animation/Animation;->hasAlpha()Z

    move-result v6

    if-eqz v6, :cond_3f2

    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_3f2

    .line 2940
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->invalidate(Z)V

    .line 2944
    :cond_3f2
    const/4 v6, 0x0

    move-object/from16 v0, p2

    iput-boolean v6, v0, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_129

    .line 2730
    .end local v26           #alpha:F
    .end local v27           #cache:Landroid/graphics/Bitmap;
    .end local v36           #displayList:Landroid/view/DisplayList;
    .end local v39           #hasDisplayList:Z
    .end local v40           #hasNoCache:Z
    .end local v48           #offsetForScroll:Z
    .end local v49           #restoreTo:I
    .end local v54           #sx:I
    .end local v55           #sy:I
    :cond_3f9
    const/4 v6, 0x0

    goto/16 :goto_1f8

    .line 2750
    .restart local v27       #cache:Landroid/graphics/Bitmap;
    .restart local v36       #displayList:Landroid/view/DisplayList;
    .restart local v39       #hasDisplayList:Z
    .restart local v54       #sx:I
    .restart local v55       #sy:I
    :cond_3fc
    packed-switch v45, :pswitch_data_56c

    goto/16 :goto_232

    .line 2758
    :pswitch_401
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v39

    goto/16 :goto_232

    .line 2752
    :pswitch_407
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2753
    const/4 v6, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2754
    goto/16 :goto_232

    .line 2764
    :cond_416
    const/16 v40, 0x0

    goto/16 :goto_238

    .line 2765
    .restart local v40       #hasNoCache:Z
    :cond_41a
    const/16 v48, 0x0

    goto/16 :goto_243

    .line 2772
    .restart local v48       #offsetForScroll:Z
    .restart local v49       #restoreTo:I
    :cond_41e
    move/from16 v0, v32

    int-to-float v6, v0

    move/from16 v0, v35

    int-to-float v7, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2773
    if-eqz v51, :cond_254

    .line 2775
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v50, v6, v7

    .line 2776
    .local v50, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v50

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_254

    .end local v50           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v18       #layerFlags:I
    .restart local v26       #alpha:F
    :cond_440
    move/from16 v52, v54

    .line 2826
    goto/16 :goto_31a

    .restart local v52       #scrollX:I
    :cond_444
    move/from16 v53, v55

    .line 2827
    goto/16 :goto_31e

    .line 2833
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    :cond_448
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_335

    .line 2837
    .end local v17           #multipliedAlpha:I
    :cond_455
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_335

    .line 2838
    const/16 v6, 0xff

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->onSetAlpha(I)Z

    .line 2839
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x40001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_335

    .line 2846
    :cond_475
    if-eqz v51, :cond_479

    if-nez v27, :cond_486

    .line 2847
    :cond_479
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_34d

    .line 2849
    :cond_486
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7, v8, v9}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_34d

    .line 2874
    .restart local v43       #layer:Landroid/view/HardwareLayer;
    .restart local v44       #layerRendered:Z
    :cond_497
    if-eqz v39, :cond_4c6

    const/16 v52, 0x0

    .line 2875
    .restart local v52       #scrollX:I
    :goto_49b
    if-eqz v39, :cond_4c9

    const/16 v53, 0x0

    .line 2876
    .restart local v53       #scrollY:I
    :goto_49f
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v21, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    int-to-float v0, v6

    move/from16 v22, v0

    add-int v6, v53, v30

    sub-int v6, v6, v35

    int-to-float v0, v6

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x14

    move-object/from16 v19, p1

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_38f

    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_4c6
    move/from16 v52, v54

    .line 2874
    goto :goto_49b

    .restart local v52       #scrollX:I
    :cond_4c9
    move/from16 v53, v55

    .line 2875
    goto :goto_49f

    .line 2892
    .end local v43           #layer:Landroid/view/HardwareLayer;
    .end local v52           #scrollX:I
    :cond_4cc
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3b0

    .line 2895
    :cond_4d5
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    move-object/from16 v6, p1

    .line 2896
    check-cast v6, Landroid/view/HardwareCanvas;

    sub-int v7, v34, v32

    sub-int v8, v30, v35

    const/4 v9, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;IILandroid/graphics/Rect;)Z

    goto/16 :goto_3b0

    .line 2899
    .end local v44           #layerRendered:Z
    :cond_4f1
    if-eqz v27, :cond_3b0

    .line 2900
    move-object/from16 v0, p2

    iget v6, v0, Landroid/view/View;->mPrivateFlags:I

    const v7, -0x600001

    and-int/2addr v6, v7

    move-object/from16 v0, p2

    iput v6, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2903
    if-nez v45, :cond_55b

    .line 2904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 2905
    .local v28, cachePaint:Landroid/graphics/Paint;
    if-nez v28, :cond_51a

    .line 2906
    new-instance v28, Landroid/graphics/Paint;

    .end local v28           #cachePaint:Landroid/graphics/Paint;
    invoke-direct/range {v28 .. v28}, Landroid/graphics/Paint;-><init>()V

    .line 2907
    .restart local v28       #cachePaint:Landroid/graphics/Paint;
    const/4 v6, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setDither(Z)V

    .line 2908
    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 2910
    :cond_51a
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_541

    .line 2911
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2912
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v6, v6, 0x1000

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2921
    :cond_534
    :goto_534
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v6, v7, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3b0

    .line 2913
    :cond_541
    move/from16 v0, v37

    and-int/lit16 v6, v0, 0x1000

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_534

    .line 2914
    const/16 v6, 0xff

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2915
    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v6, v6, -0x1001

    move-object/from16 v0, p0

    iput v6, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_534

    .line 2918
    .end local v28           #cachePaint:Landroid/graphics/Paint;
    :cond_55b
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 2919
    .restart local v28       #cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_534

    .line 2750
    :pswitch_data_56c
    .packed-switch 0x0
        :pswitch_401
        :pswitch_407
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .registers 7

    .prologue
    .line 5009
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 5011
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2e

    .line 5012
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_18

    .line 5013
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 5017
    :cond_18
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5018
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5020
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v2, :cond_2e

    .line 5021
    aget-object v0, v1, v3

    .line 5022
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b

    .line 5023
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 5020
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 5027
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2e
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 4896
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    .line 4897
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4898
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4899
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4900
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4901
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4903
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4912
    :cond_27
    :goto_27
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4915
    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2d
    return-void

    .line 4905
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2e
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_35

    .line 4906
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4908
    :cond_35
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_27

    .line 4909
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_27
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 735
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 742
    .end local p0
    :goto_6
    return-object p0

    .line 739
    .restart local p0
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_12

    .line 740
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object p0

    goto :goto_6

    .line 742
    :cond_12
    const/4 p0, 0x0

    goto :goto_6
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "outLocalPoint"

    .prologue
    .line 1164
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1165
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1166
    .local v1, children:[Landroid/view/View;
    add-int/lit8 v3, v2, -0x1

    .local v3, i:I
    :goto_6
    if-ltz v3, :cond_1a

    .line 1167
    aget-object v0, v1, v3

    .line 1168
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->canAcceptDrag()Z

    move-result v4

    if-nez v4, :cond_13

    .line 1166
    :cond_10
    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    .line 1172
    :cond_13
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1176
    .end local v0           #child:Landroid/view/View;
    :goto_19
    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method findViewByAccessibilityIdTraversal(I)Landroid/view/View;
    .registers 8
    .parameter "accessibilityId"

    .prologue
    .line 831
    invoke-super {p0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 832
    .local v3, foundView:Landroid/view/View;
    if-eqz v3, :cond_8

    move-object v5, v3

    .line 844
    :goto_7
    return-object v5

    .line 835
    :cond_8
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 836
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 837
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    if-ge v4, v2, :cond_1c

    .line 838
    aget-object v0, v1, v4

    .line 839
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewByAccessibilityIdTraversal(I)Landroid/view/View;

    move-result-object v3

    .line 840
    if-eqz v3, :cond_19

    move-object v5, v3

    .line 841
    goto :goto_7

    .line 837
    :cond_19
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 844
    .end local v0           #child:Landroid/view/View;
    :cond_1c
    const/4 v5, 0x0

    goto :goto_7
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;Landroid/view/View;)Landroid/view/View;
    .registers 8
    .parameter
    .parameter "childToSkip"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 3119
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3138
    .end local p0
    :goto_6
    return-object p0

    .line 3123
    .restart local p0
    :cond_7
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3124
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3126
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    if-ge v0, v1, :cond_23

    .line 3127
    aget-object v2, v3, v0

    .line 3129
    .local v2, v:Landroid/view/View;
    if-eq v2, p2, :cond_20

    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_20

    .line 3130
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 3132
    if-eqz v2, :cond_20

    move-object p0, v2

    .line 3133
    goto :goto_6

    .line 3126
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 3138
    .end local v2           #v:Landroid/view/View;
    :cond_23
    const/4 p0, 0x0

    goto :goto_6
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 7
    .parameter "id"

    .prologue
    .line 3065
    iget v4, p0, Landroid/view/View;->mID:I

    if-ne p1, v4, :cond_5

    .line 3084
    .end local p0
    :goto_4
    return-object p0

    .line 3069
    .restart local p0
    :cond_5
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3070
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3072
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    if-ge v0, v1, :cond_1f

    .line 3073
    aget-object v2, v3, v0

    .line 3075
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1c

    .line 3076
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3078
    if-eqz v2, :cond_1c

    move-object p0, v2

    .line 3079
    goto :goto_4

    .line 3072
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 3084
    .end local v2           #v:Landroid/view/View;
    :cond_1f
    const/4 p0, 0x0

    goto :goto_4
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter "tag"

    .prologue
    .line 3092
    if-eqz p1, :cond_b

    iget-object v4, p0, Landroid/view/View;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3111
    .end local p0
    :goto_a
    return-object p0

    .line 3096
    .restart local p0
    :cond_b
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3097
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3099
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_10
    if-ge v0, v1, :cond_25

    .line 3100
    aget-object v2, v3, v0

    .line 3102
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_22

    .line 3103
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 3105
    if-eqz v2, :cond_22

    move-object p0, v2

    .line 3106
    goto :goto_a

    .line 3099
    :cond_22
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 3111
    .end local v2           #v:Landroid/view/View;
    :cond_25
    const/4 p0, 0x0

    goto :goto_a
.end method

.method public findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V
    .registers 9
    .parameter
    .parameter "text"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/lang/CharSequence;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 817
    .local p1, outViews:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 818
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 819
    .local v2, childrenCount:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 820
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_1e

    .line 821
    aget-object v0, v1, v3

    .line 822
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_1b

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1b

    .line 824
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->findViewsWithText(Ljava/util/ArrayList;Ljava/lang/CharSequence;I)V

    .line 820
    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 827
    .end local v0           #child:Landroid/view/View;
    :cond_1e
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 7
    .parameter "insets"

    .prologue
    .line 4983
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 4984
    .local v2, done:Z
    if-nez v2, :cond_15

    .line 4985
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4986
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4987
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v1, :cond_15

    .line 4988
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 4989
    if-eqz v2, :cond_16

    .line 4994
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_15
    return v2

    .line 4987
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 588
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 592
    :goto_e
    return-object v0

    .line 589
    :cond_f
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    .line 590
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 592
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 545
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 557
    :cond_1a
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 559
    :cond_1f
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11
    .parameter "region"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 4948
    iget v8, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v8, v8, 0x200

    if-nez v8, :cond_e

    move v4, v7

    .line 4949
    .local v4, meOpaque:Z
    :goto_9
    if-eqz v4, :cond_10

    if-nez p1, :cond_10

    .line 4965
    :goto_d
    return v7

    .end local v4           #meOpaque:Z
    :cond_e
    move v4, v6

    .line 4948
    goto :goto_9

    .line 4953
    .restart local v4       #meOpaque:Z
    :cond_10
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 4954
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4955
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4956
    .local v2, count:I
    const/4 v5, 0x1

    .line 4957
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_19
    if-ge v3, v2, :cond_33

    .line 4958
    aget-object v0, v1, v3

    .line 4959
    .local v0, child:Landroid/view/View;
    iget v8, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v8, v8, 0xc

    if-eqz v8, :cond_29

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v8

    if-eqz v8, :cond_30

    .line 4960
    :cond_29
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v8

    if-nez v8, :cond_30

    .line 4961
    const/4 v5, 0x0

    .line 4957
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 4965
    .end local v0           #child:Landroid/view/View;
    :cond_33
    if-nez v4, :cond_37

    if-eqz v5, :cond_38

    :cond_37
    move v6, v7

    :cond_38
    move v7, v6

    goto :goto_d
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 4505
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 4476
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .parameter "p"

    .prologue
    .line 4494
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 4630
    if-ltz p1, :cond_6

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_8

    .line 4631
    :cond_6
    const/4 v0, 0x0

    .line 4633
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_7
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 4619
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 2558
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 3057
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 15
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v9, 0x3f00

    .line 4187
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_7c

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v3, v6, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4188
    .local v3, rect:Landroid/graphics/RectF;
    :goto_d
    invoke-virtual {v3, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4190
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_1d

    .line 4191
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4194
    :cond_1d
    iget v6, p1, Landroid/view/View;->mLeft:I

    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v6, v7

    .line 4195
    .local v0, dx:I
    iget v6, p1, Landroid/view/View;->mTop:I

    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int v1, v6, v7

    .line 4197
    .local v1, dy:I
    int-to-float v6, v0

    int-to-float v7, v1

    invoke-virtual {v3, v6, v7}, Landroid/graphics/RectF;->offset(FF)V

    .line 4199
    if-eqz p3, :cond_65

    .line 4200
    invoke-virtual {p1}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_5b

    .line 4201
    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v6, :cond_82

    iget-object v6, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v6, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 4203
    .local v2, position:[F
    :goto_3e
    iget v6, p3, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    aput v6, v2, v5

    .line 4204
    iget v6, p3, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    aput v6, v2, v4

    .line 4205
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 4206
    aget v6, v2, v5

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4207
    aget v6, v2, v4

    add-float/2addr v6, v9

    float-to-int v6, v6

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4209
    .end local v2           #position:[F
    :cond_5b
    iget v6, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v6, v0

    iput v6, p3, Landroid/graphics/Point;->x:I

    .line 4210
    iget v6, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v1

    iput v6, p3, Landroid/graphics/Point;->y:I

    .line 4213
    :cond_65
    iget v6, p0, Landroid/view/View;->mRight:I

    iget v7, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/view/View;->mBottom:I

    iget v8, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual {v3, v10, v10, v6, v7}, Landroid/graphics/RectF;->intersect(FFFF)Z

    move-result v6

    if-eqz v6, :cond_a0

    .line 4214
    iget-object v5, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-nez v5, :cond_86

    .line 4220
    :goto_7b
    return v4

    .line 4187
    .end local v0           #dx:I
    .end local v1           #dy:I
    .end local v3           #rect:Landroid/graphics/RectF;
    :cond_7c
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    goto :goto_d

    .line 4201
    .restart local v0       #dx:I
    .restart local v1       #dy:I
    .restart local v3       #rect:Landroid/graphics/RectF;
    :cond_82
    const/4 v6, 0x2

    new-array v2, v6, [F

    goto :goto_3e

    .line 4215
    :cond_86
    iget v4, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v9

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v9

    float-to-int v5, v5

    iget v6, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v6, v9

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v7, v9

    float-to-int v7, v7

    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 4217
    iget-object v4, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v4, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v4

    goto :goto_7b

    :cond_a0
    move v4, v5

    .line 4220
    goto :goto_7b
.end method

.method public getDescendantFocusability()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 477
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 710
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2

    .prologue
    .line 4294
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .prologue
    .line 5004
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 2

    .prologue
    .line 3630
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4449
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 507
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 508
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 509
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 511
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 512
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 720
    iget v0, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasFocusable()Z
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 750
    iget v7, p0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-eqz v7, :cond_9

    .line 771
    :cond_8
    :goto_8
    return v5

    .line 754
    :cond_9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v7

    if-eqz v7, :cond_11

    move v5, v6

    .line 755
    goto :goto_8

    .line 758
    :cond_11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 759
    .local v3, descendantFocusability:I
    const/high16 v7, 0x6

    if-eq v3, v7, :cond_8

    .line 760
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 761
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 763
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1e
    if-ge v4, v2, :cond_8

    .line 764
    aget-object v0, v1, v4

    .line 765
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v7

    if-eqz v7, :cond_2a

    move v5, v6

    .line 766
    goto :goto_8

    .line 763
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e
.end method

.method protected hasHoveredChild()Z
    .registers 2

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstHoverTarget:Landroid/view/ViewGroup$HoverTarget;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 6
    .parameter "child"

    .prologue
    .line 4602
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4603
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4604
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 4605
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_c

    .line 4609
    .end local v2           #i:I
    :goto_b
    return v2

    .line 4604
    .restart local v2       #i:I
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4609
    :cond_f
    const/4 v2, -0x1

    goto :goto_b
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 20
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 3894
    move-object/from16 v10, p0

    .line 3896
    .local v10, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3897
    .local v1, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v1, :cond_6e

    .line 3901
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v12, v12, 0x40

    const/16 v13, 0x40

    if-ne v12, v13, :cond_6f

    const/4 v4, 0x1

    .line 3903
    .local v4, drawAnimation:Z
    :goto_13
    if-nez p2, :cond_bc

    .line 3904
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_39

    .line 3905
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3906
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3907
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 3910
    :cond_39
    const/4 v11, 0x0

    .line 3911
    .local v11, view:Landroid/view/View;
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_71

    move-object v11, v10

    .line 3912
    check-cast v11, Landroid/view/View;

    .line 3913
    iget v12, v11, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_67

    .line 3914
    iget-object v12, v11, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v12}, Landroid/graphics/Rect;->setEmpty()V

    .line 3915
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/View;

    if-eqz v12, :cond_67

    .line 3916
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3917
    .local v5, grandParent:Landroid/view/View;
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3918
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3921
    .end local v5           #grandParent:Landroid/view/View;
    :cond_67
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x60

    and-int/2addr v12, v13

    if-eqz v12, :cond_71

    .line 4026
    .end local v4           #drawAnimation:Z
    .end local v11           #view:Landroid/view/View;
    :cond_6e
    :goto_6e
    return-void

    .line 3901
    :cond_6f
    const/4 v4, 0x0

    goto :goto_13

    .line 3927
    .restart local v4       #drawAnimation:Z
    .restart local v11       #view:Landroid/view/View;
    :cond_71
    if-eqz v4, :cond_7b

    .line 3928
    if-eqz v11, :cond_88

    .line 3929
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 3935
    :cond_7b
    :goto_7b
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_93

    .line 3936
    check-cast v10, Landroid/view/ViewRootImpl;

    .end local v10           #parent:Landroid/view/ViewParent;
    invoke-virtual {v10}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 3937
    const/4 v10, 0x0

    .line 3948
    .restart local v10       #parent:Landroid/view/ViewParent;
    :cond_85
    :goto_85
    if-nez v10, :cond_39

    goto :goto_6e

    .line 3930
    :cond_88
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_7b

    move-object v12, v10

    .line 3931
    check-cast v12, Landroid/view/ViewRootImpl;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_7b

    .line 3938
    :cond_93
    if-eqz v11, :cond_85

    .line 3939
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v12, v12, 0x20

    const/16 v13, 0x20

    if-eq v12, v13, :cond_a8

    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, 0x8000

    and-int/2addr v12, v13

    const v13, 0x8000

    if-ne v12, v13, :cond_ba

    .line 3941
    :cond_a8
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 3942
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x20

    or-int/2addr v12, v13

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 3943
    iget-object v10, v11, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_85

    .line 3945
    :cond_ba
    const/4 v10, 0x0

    goto :goto_85

    .line 3951
    .end local v11           #view:Landroid/view/View;
    :cond_bc
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v12

    if-eqz v12, :cond_1c4

    if-nez v4, :cond_1c4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v12

    if-nez v12, :cond_1c4

    const/4 v6, 0x1

    .line 3955
    .local v6, isOpaque:Z
    :goto_cb
    if-eqz v6, :cond_1c7

    const/high16 v9, 0x40

    .line 3957
    .local v9, opaqueFlag:I
    :goto_cf
    move-object/from16 v0, p1

    iget v12, v0, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_f5

    .line 3958
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3959
    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    move-object/from16 v0, p0

    iput v12, v0, Landroid/view/View;->mPrivateFlags:I

    .line 3960
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3963
    :cond_f5
    iget-object v7, v1, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 3964
    .local v7, location:[I
    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/View;->mLeft:I

    aput v13, v7, v12

    .line 3965
    const/4 v12, 0x1

    move-object/from16 v0, p1

    iget v13, v0, Landroid/view/View;->mTop:I

    aput v13, v7, v12

    .line 3966
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 3967
    .local v3, childMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v3}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_137

    .line 3968
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 3969
    .local v2, boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3971
    invoke-virtual {v3, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3972
    iget v12, v2, Landroid/graphics/RectF;->left:F

    const/high16 v13, 0x3f00

    sub-float/2addr v12, v13

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->top:F

    const/high16 v14, 0x3f00

    sub-float/2addr v13, v14

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 3979
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    :cond_137
    const/4 v11, 0x0

    .line 3980
    .restart local v11       #view:Landroid/view/View;
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_160

    move-object v11, v10

    .line 3981
    check-cast v11, Landroid/view/View;

    .line 3982
    iget v12, v11, Landroid/view/View;->mLayerType:I

    if-eqz v12, :cond_160

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    instance-of v12, v12, Landroid/view/View;

    if-eqz v12, :cond_160

    .line 3984
    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 3985
    .restart local v5       #grandParent:Landroid/view/View;
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, -0x8000

    or-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3986
    iget v12, v5, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x8001

    and-int/2addr v12, v13

    iput v12, v5, Landroid/view/View;->mPrivateFlags:I

    .line 3990
    .end local v5           #grandParent:Landroid/view/View;
    :cond_160
    if-eqz v4, :cond_16a

    .line 3991
    if-eqz v11, :cond_1cb

    .line 3992
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4000
    :cond_16a
    :goto_16a
    if-eqz v11, :cond_18c

    .line 4001
    iget v12, v11, Landroid/view/View;->mViewFlags:I

    and-int/lit16 v12, v12, 0x3000

    if-eqz v12, :cond_17a

    invoke-virtual {v11}, Landroid/view/View;->getSolidColor()I

    move-result v12

    if-nez v12, :cond_17a

    .line 4003
    const/high16 v9, 0x20

    .line 4005
    :cond_17a
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const/high16 v13, 0x60

    and-int/2addr v12, v13

    const/high16 v13, 0x20

    if-eq v12, v13, :cond_18c

    .line 4006
    iget v12, v11, Landroid/view/View;->mPrivateFlags:I

    const v13, -0x600001

    and-int/2addr v12, v13

    or-int/2addr v12, v9

    iput v12, v11, Landroid/view/View;->mPrivateFlags:I

    .line 4010
    :cond_18c
    move-object/from16 v0, p2

    invoke-interface {v10, v7, v0}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v10

    .line 4011
    if-eqz v11, :cond_1c0

    .line 4013
    invoke-virtual {v11}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    .line 4014
    .local v8, m:Landroid/graphics/Matrix;
    invoke-virtual {v8}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_1c0

    .line 4015
    iget-object v2, v1, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 4016
    .restart local v2       #boundingRect:Landroid/graphics/RectF;
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 4017
    invoke-virtual {v8, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 4018
    iget v12, v2, Landroid/graphics/RectF;->left:F

    float-to-int v12, v12

    iget v13, v2, Landroid/graphics/RectF;->top:F

    float-to-int v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    const/high16 v15, 0x3f00

    add-float/2addr v14, v15

    float-to-int v14, v14

    iget v15, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v16, 0x3f00

    add-float v15, v15, v16

    float-to-int v15, v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13, v14, v15}, Landroid/graphics/Rect;->set(IIII)V

    .line 4023
    .end local v2           #boundingRect:Landroid/graphics/RectF;
    .end local v8           #m:Landroid/graphics/Matrix;
    :cond_1c0
    if-nez v10, :cond_137

    goto/16 :goto_6e

    .line 3951
    .end local v3           #childMatrix:Landroid/graphics/Matrix;
    .end local v6           #isOpaque:Z
    .end local v7           #location:[I
    .end local v9           #opaqueFlag:I
    .end local v11           #view:Landroid/view/View;
    :cond_1c4
    const/4 v6, 0x0

    goto/16 :goto_cb

    .line 3955
    .restart local v6       #isOpaque:Z
    :cond_1c7
    const/high16 v9, 0x20

    goto/16 :goto_cf

    .line 3993
    .restart local v3       #childMatrix:Landroid/graphics/Matrix;
    .restart local v7       #location:[I
    .restart local v9       #opaqueFlag:I
    .restart local v11       #view:Landroid/view/View;
    :cond_1cb
    instance-of v12, v10, Landroid/view/ViewRootImpl;

    if-eqz v12, :cond_16a

    move-object v12, v10

    .line 3994
    check-cast v12, Landroid/view/ViewRootImpl;

    const/4 v13, 0x1

    iput-boolean v13, v12, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    goto :goto_16a
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 10
    .parameter "location"
    .parameter "dirty"

    .prologue
    const v4, 0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4041
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_12

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_9a

    .line 4043
    :cond_12
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_5d

    .line 4045
    aget v2, p1, v5

    iget v3, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4048
    iget v0, p0, Landroid/view/View;->mLeft:I

    .line 4049
    .local v0, left:I
    iget v1, p0, Landroid/view/View;->mTop:I

    .line 4051
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_45

    iget v2, p0, Landroid/view/View;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/View;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_45

    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_9a

    .line 4054
    :cond_45
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4056
    aput v0, p1, v5

    .line 4057
    aput v1, p1, v6

    .line 4059
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_5a

    .line 4060
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4063
    :cond_5a
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4085
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_5c
    return-object v2

    .line 4066
    :cond_5d
    iget v2, p0, Landroid/view/View;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/View;->mPrivateFlags:I

    .line 4068
    iget v2, p0, Landroid/view/View;->mLeft:I

    aput v2, p1, v5

    .line 4069
    iget v2, p0, Landroid/view/View;->mTop:I

    aput v2, p1, v6

    .line 4070
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v6, :cond_8c

    .line 4071
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 4077
    :goto_80
    iget v2, p0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_89

    .line 4078
    iget-object v2, p0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 4081
    :cond_89
    iget-object v2, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_5c

    .line 4074
    :cond_8c
    iget v2, p0, Landroid/view/View;->mRight:I

    iget v3, p0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/View;->mBottom:I

    iget v4, p0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_80

    .line 4085
    :cond_9a
    const/4 v2, 0x0

    goto :goto_5c
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4340
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAnimationCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 4310
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4407
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 4375
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMotionEventSplittingEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 2022
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1898
    iget v4, p0, Landroid/view/View;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, p3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 1899
    .local v1, localX:F
    iget v4, p0, Landroid/view/View;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iget v5, p3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 1900
    .local v3, localY:F
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_31

    .line 1901
    iget-object v4, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 1902
    .local v2, localXY:[F
    aput v1, v2, v6

    .line 1903
    aput v3, v2, v7

    .line 1904
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1905
    aget v1, v2, v6

    .line 1906
    aget v3, v2, v7

    .line 1908
    .end local v2           #localXY:[F
    :cond_31
    invoke-virtual {p3, v1, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 1909
    .local v0, isInView:Z
    if-eqz v0, :cond_3c

    if-eqz p4, :cond_3c

    .line 1910
    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1912
    :cond_3c
    return v0
.end method

.method isViewTransitioning(Landroid/view/View;)Z
    .registers 3
    .parameter "view"

    .prologue
    .line 4861
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 5

    .prologue
    .line 5031
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5032
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 5033
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 5034
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 5035
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 5034
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5037
    :cond_12
    return-void
.end method

.method public final layout(IIII)V
    .registers 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 4228
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_10

    .line 4229
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 4234
    :goto_f
    return-void

    .line 4232
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    goto :goto_f
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 9
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 4667
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4669
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4671
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4674
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4675
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 4694
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4696
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/View;->mPaddingLeft:I

    iget v4, p0, Landroid/view/View;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4699
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/View;->mPaddingTop:I

    iget v4, p0, Landroid/view/View;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4703
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4704
    return-void
.end method

.method protected measureChildren(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 4646
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4647
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4648
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v3, :cond_17

    .line 4649
    aget-object v0, v1, v2

    .line 4650
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 4651
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4648
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4654
    .end local v0           #child:Landroid/view/View;
    :cond_17
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .registers 4
    .parameter "child"

    .prologue
    .line 1184
    const/4 v0, 0x0

    .line 1185
    .local v0, canAccept:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    .line 1186
    iget-object v1, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1187
    iget-object v1, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    .line 1188
    if-eqz v0, :cond_25

    invoke-virtual {p1}, Landroid/view/View;->canAcceptDrag()Z

    move-result v1

    if-nez v1, :cond_25

    .line 1189
    iget v1, p1, Landroid/view/View;->mPrivateFlags2:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Landroid/view/View;->mPrivateFlags2:I

    .line 1190
    invoke-virtual {p1}, Landroid/view/View;->refreshDrawableState()V

    .line 1193
    :cond_25
    return v0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .registers 7
    .parameter "offset"

    .prologue
    .line 4170
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4171
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4173
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_16

    .line 4174
    aget-object v3, v0, v2

    .line 4175
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 4176
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 4173
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4178
    .end local v3           #v:Landroid/view/View;
    :cond_16
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 4095
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4096
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .registers 11
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v5, 0x0

    .line 4116
    if-ne p1, p0, :cond_4

    .line 4160
    :goto_3
    return-void

    .line 4120
    :cond_4
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 4125
    .local v1, theParent:Landroid/view/ViewParent;
    :goto_6
    if-eqz v1, :cond_55

    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_55

    if-eq v1, p0, :cond_55

    .line 4127
    if-eqz p3, :cond_35

    .line 4128
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 4130
    if-eqz p4, :cond_2f

    move-object v0, v1

    .line 4131
    check-cast v0, Landroid/view/View;

    .line 4132
    .local v0, p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .end local v0           #p:Landroid/view/View;
    :cond_2f
    :goto_2f
    move-object p1, v1

    .line 4143
    check-cast p1, Landroid/view/View;

    .line 4144
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 4135
    :cond_35
    if-eqz p4, :cond_47

    move-object v0, v1

    .line 4136
    check-cast v0, Landroid/view/View;

    .line 4137
    .restart local v0       #p:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mRight:I

    iget v3, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, v0, Landroid/view/View;->mBottom:I

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 4139
    .end local v0           #p:Landroid/view/View;
    :cond_47
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_2f

    .line 4149
    :cond_55
    if-ne v1, p0, :cond_75

    .line 4150
    if-eqz p3, :cond_67

    .line 4151
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mTop:I

    iget v4, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 4154
    :cond_67
    iget v2, p1, Landroid/view/View;->mScrollX:I

    iget v3, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/view/View;->mScrollY:I

    iget v4, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 4158
    :cond_75
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "parameter must be a descendant of this view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 4105
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 4106
    return-void
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 2387
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2390
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1d

    .line 2391
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2393
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1d

    .line 2394
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2397
    :cond_1d
    return-void
.end method

.method protected onAnimationStart()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    .line 2363
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2366
    iget v6, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v6, v6, 0x40

    const/16 v7, 0x40

    if-ne v6, v7, :cond_37

    .line 2367
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2368
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2369
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v6

    if-nez v6, :cond_2d

    move v0, v5

    .line 2371
    .local v0, buildCache:Z
    :goto_17
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    if-ge v4, v3, :cond_2f

    .line 2372
    aget-object v1, v2, v4

    .line 2373
    .local v1, child:Landroid/view/View;
    iget v6, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_2a

    .line 2374
    invoke-virtual {v1, v5}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2375
    if-eqz v0, :cond_2a

    .line 2376
    invoke-virtual {v1, v5}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2371
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2369
    .end local v0           #buildCache:Z
    .end local v1           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_2d
    const/4 v0, 0x0

    goto :goto_17

    .line 2381
    .restart local v0       #buildCache:Z
    .restart local v4       #i:I
    :cond_2f
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2383
    .end local v0           #buildCache:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_37
    return-void
.end method

.method protected onChildVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .parameter "child"
    .parameter "visibility"

    .prologue
    .line 897
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2c

    .line 898
    if-nez p2, :cond_36

    .line 899
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 903
    :goto_b
    if-eqz p2, :cond_2c

    .line 906
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 907
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 909
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 911
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 917
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_35

    .line 918
    if-nez p2, :cond_35

    .line 919
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 922
    :cond_35
    return-void

    .line 901
    :cond_36
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_b
.end method

.method protected onConsistencyCheck(I)Z
    .registers 13
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 4529
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 4531
    .local v6, result:Z
    and-int/lit8 v8, p1, 0x1

    if-eqz v8, :cond_4a

    move v1, v0

    .line 4532
    .local v1, checkLayout:Z
    :goto_d
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_4c

    .line 4534
    .local v0, checkDrawing:Z
    :goto_11
    if-eqz v1, :cond_4e

    .line 4535
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4536
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4537
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    if-ge v4, v3, :cond_4e

    .line 4538
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_47

    .line 4539
    const/4 v6, 0x0

    .line 4540
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has no parent/a parent that is not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    :cond_47
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_4a
    move v1, v7

    .line 4531
    goto :goto_d

    .restart local v1       #checkLayout:Z
    :cond_4c
    move v0, v7

    .line 4532
    goto :goto_11

    .line 4546
    .restart local v0       #checkDrawing:Z
    :cond_4e
    if-eqz v0, :cond_89

    .line 4548
    iget v7, p0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_89

    .line 4549
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 4550
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_89

    instance-of v7, v5, Landroid/view/ViewRootImpl;

    if-nez v7, :cond_89

    .line 4551
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_89

    .line 4552
    const/4 v6, 0x0

    .line 4553
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewGroup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is dirty but its parent is not: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4560
    :cond_89
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .parameter "extraSpace"

    .prologue
    .line 5041
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_b

    .line 5042
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5065
    :cond_a
    return-object v4

    .line 5045
    :cond_b
    const/4 v3, 0x0

    .line 5046
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5047
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_22

    .line 5048
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5050
    .local v0, childState:[I
    if-eqz v0, :cond_1f

    .line 5051
    array-length v5, v0

    add-int/2addr v3, v5

    .line 5047
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 5055
    .end local v0           #childState:[I
    :cond_22
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 5057
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_a

    .line 5058
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 5060
    .restart local v0       #childState:[I
    if-eqz v0, :cond_39

    .line 5061
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 5057
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_29
.end method

.method onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 6
    .parameter "info"

    .prologue
    .line 2236
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2237
    const/4 v2, 0x0

    .local v2, i:I
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .local v1, count:I
    :goto_6
    if-ge v2, v1, :cond_1e

    .line 2238
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v3, v2

    .line 2239
    .local v0, child:Landroid/view/View;
    iget v3, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    if-nez v3, :cond_1b

    iget v3, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_1b

    .line 2241
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;)V

    .line 2237
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2244
    .end local v0           #child:Landroid/view/View;
    :cond_1e
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 1521
    const/4 v0, 0x0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 2085
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 11
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2145
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2146
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1e

    .line 2147
    const/4 v6, 0x0

    .line 2148
    .local v6, index:I
    const/4 v5, 0x1

    .line 2149
    .local v5, increment:I
    move v3, v2

    .line 2155
    .local v3, end:I
    :goto_9
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2156
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_c
    if-eq v4, v3, :cond_25

    .line 2157
    aget-object v0, v1, v4

    .line 2158
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_23

    .line 2159
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_23

    .line 2160
    const/4 v7, 0x1

    .line 2164
    .end local v0           #child:Landroid/view/View;
    :goto_1d
    return v7

    .line 2151
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_1e
    add-int/lit8 v6, v2, -0x1

    .line 2152
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 2153
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_9

    .line 2156
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_23
    add-int/2addr v4, v5

    goto :goto_c

    .line 2164
    .end local v0           #child:Landroid/view/View;
    :cond_25
    const/4 v7, 0x0

    goto :goto_1d
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "child"
    .parameter "event"

    .prologue
    .line 635
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    if-eqz v0, :cond_b

    .line 636
    iget-object v0, p0, Landroid/view/View;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 638
    :goto_a
    return v0

    :cond_b
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    goto :goto_a
.end method

.method onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 4
    .parameter "child"
    .parameter "event"

    .prologue
    .line 648
    const/4 v0, 0x1

    return v0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3273
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_9

    .line 3274
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3276
    :cond_9
    return-void
.end method

.method protected onViewRemoved(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3282
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_9

    .line 3283
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3285
    :cond_9
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 967
    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_11

    .line 968
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 969
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 971
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_11
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 3677
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 3678
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3679
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3680
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 3692
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3693
    .local v2, count:I
    if-gtz v2, :cond_7

    .line 3734
    :cond_6
    :goto_6
    return-void

    .line 3697
    :cond_7
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3698
    .local v0, children:[Landroid/view/View;
    iput v7, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3700
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3701
    .local v4, focused:Landroid/view/View;
    iget-object v8, p0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v8, :cond_4a

    const/4 v3, 0x1

    .line 3702
    .local v3, detach:Z
    :goto_12
    const/4 v1, 0x0

    .line 3704
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v7}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3706
    add-int/lit8 v5, v2, -0x1

    .local v5, i:I
    :goto_18
    if-ltz v5, :cond_52

    .line 3707
    aget-object v6, v0, v5

    .line 3709
    .local v6, view:Landroid/view/View;
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v7, :cond_25

    .line 3710
    iget-object v7, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v7, p0, v6}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3713
    :cond_25
    if-ne v6, v4, :cond_2b

    .line 3714
    invoke-virtual {v6}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3715
    move-object v1, v6

    .line 3718
    :cond_2b
    invoke-virtual {v6}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v7

    if-nez v7, :cond_3d

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v7, :cond_4c

    iget-object v7, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 3720
    :cond_3d
    invoke-direct {p0, v6}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3725
    :cond_40
    :goto_40
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3727
    iput-object v9, v6, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3728
    aput-object v9, v0, v5

    .line 3706
    add-int/lit8 v5, v5, -0x1

    goto :goto_18

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v5           #i:I
    .end local v6           #view:Landroid/view/View;
    :cond_4a
    move v3, v7

    .line 3701
    goto :goto_12

    .line 3721
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v6       #view:Landroid/view/View;
    :cond_4c
    if-eqz v3, :cond_40

    .line 3722
    invoke-virtual {v6}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_40

    .line 3731
    .end local v6           #view:Landroid/view/View;
    :cond_52
    if-eqz v1, :cond_6

    .line 3732
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_6
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 3750
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_9

    .line 3751
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3754
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 3755
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 3758
    :cond_10
    if-eqz p2, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_24

    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2b

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3760
    :cond_24
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3765
    :cond_27
    :goto_27
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->onViewRemoved(Landroid/view/View;)V

    .line 3766
    return-void

    .line 3761
    :cond_2b
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_27

    .line 3762
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_27
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 3514
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3515
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3516
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3517
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 3546
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3547
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3548
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3549
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 3526
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3527
    return-void
.end method

.method public removeViews(II)V
    .registers 4
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3558
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3559
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3560
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3561
    return-void
.end method

.method public removeViewsInLayout(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3537
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3538
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 521
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 539
    :cond_8
    :goto_8
    return-void

    .line 526
    :cond_9
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 529
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_1b

    .line 530
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 531
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 534
    :cond_19
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 536
    :cond_1b
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_8

    .line 537
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_8
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 599
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 2030
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    if-ne p1, v0, :cond_d

    .line 2045
    :cond_a
    :goto_a
    return-void

    .line 2030
    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    .line 2035
    :cond_d
    if-eqz p1, :cond_1e

    .line 2036
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2042
    :goto_14
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 2043
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_a

    .line 2038
    :cond_1e
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_14
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2108
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 2110
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_3c

    .line 2122
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2112
    :sswitch_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2119
    :cond_24
    :goto_24
    return v1

    .line 2114
    :sswitch_25
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2115
    .local v1, took:Z
    if-nez v1, :cond_24

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_24

    .line 2118
    .end local v1           #took:Z
    :sswitch_30
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 2119
    .restart local v1       #took:Z
    if-nez v1, :cond_24

    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_24

    .line 2110
    nop

    :sswitch_data_3c
    .sparse-switch
        0x20000 -> :sswitch_25
        0x40000 -> :sswitch_30
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter "child"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 606
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 607
    .local v0, parent:Landroid/view/ViewParent;
    if-nez v0, :cond_8

    .line 615
    :cond_7
    :goto_7
    return v2

    .line 610
    :cond_8
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    .line 612
    .local v1, propagate:Z
    if-eqz v1, :cond_7

    .line 615
    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v2

    goto :goto_7
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .registers 3
    .parameter "transition"

    .prologue
    .line 5128
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 5129
    .local v0, viewAncestor:Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_9

    .line 5130
    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->requestTransitionStart(Landroid/animation/LayoutTransition;)V

    .line 5132
    :cond_9
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 4972
    if-eqz p1, :cond_11

    .line 4973
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4974
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 4975
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 4978
    :cond_11
    return-void
.end method

.method protected resetResolvedLayoutDirection()V
    .registers 6

    .prologue
    .line 5136
    invoke-super {p0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5139
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5140
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_1c

    .line 5141
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5142
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/high16 v4, -0x8000

    if-ne v3, v4, :cond_19

    .line 5143
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedLayoutDirection()V

    .line 5140
    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5146
    .end local v0           #child:Landroid/view/View;
    :cond_1c
    return-void
.end method

.method protected resetResolvedTextDirection()V
    .registers 5

    .prologue
    .line 5150
    invoke-super {p0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5153
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 5154
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_1a

    .line 5155
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 5156
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTextDirection()I

    move-result v3

    if-nez v3, :cond_17

    .line 5157
    invoke-virtual {v0}, Landroid/view/View;->resetResolvedTextDirection()V

    .line 5154
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5160
    .end local v0           #child:Landroid/view/View;
    :cond_1a
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .registers 2

    .prologue
    .line 4271
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4272
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .registers 3
    .parameter "addsStates"

    .prologue
    .line 5075
    if-eqz p1, :cond_c

    .line 5076
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 5081
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 5082
    return-void

    .line 5078
    :cond_c
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_8
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter "always"

    .prologue
    .line 4361
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4362
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4325
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4326
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    .line 2352
    if-nez p1, :cond_9

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    .line 2353
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2354
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2355
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v1, :cond_18

    .line 2356
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2355
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2359
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_18
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4421
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4422
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4392
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4393
    return-void
.end method

.method public setChildrenLayersEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    .line 2956
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eq p1, v2, :cond_1d

    .line 2957
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 2958
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2967
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_1d

    .line 2968
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v2, v1

    .line 2969
    .local v0, child:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_1a

    .line 2970
    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 2967
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2974
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public setClipChildren(Z)V
    .registers 3
    .parameter "clipChildren"

    .prologue
    .line 2985
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2986
    return-void
.end method

.method public setClipToPadding(Z)V
    .registers 3
    .parameter "clipToPadding"

    .prologue
    .line 2997
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2998
    return-void
.end method

.method public setDescendantFocusability(I)V
    .registers 4
    .parameter "focusability"

    .prologue
    .line 489
    sparse-switch p1, :sswitch_data_1e

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 498
    :sswitch_c
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 499
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 500
    return-void

    .line 489
    nop

    :sswitch_data_1e
    .sparse-switch
        0x20000 -> :sswitch_c
        0x40000 -> :sswitch_c
        0x60000 -> :sswitch_c
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .registers 3
    .parameter "controller"

    .prologue
    .line 4281
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 4282
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_c

    .line 4283
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4285
    :cond_c
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .parameter "animationListener"

    .prologue
    .line 5115
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 5116
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 4
    .parameter "transition"

    .prologue
    .line 3611
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_b

    .line 3612
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3614
    :cond_b
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 3615
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_18

    .line 3616
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3618
    :cond_18
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .registers 4
    .parameter "split"

    .prologue
    .line 2010
    if-eqz p1, :cond_a

    .line 2011
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2015
    :goto_9
    return-void

    .line 2013
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_9
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 3266
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3267
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2281
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 2283
    iget v0, p0, Landroid/view/View;->mPaddingLeft:I

    iget v1, p0, Landroid/view/View;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/View;->mPaddingBottom:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 2284
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2288
    :goto_16
    return-void

    .line 2286
    :cond_17
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_16
.end method

.method public setPersistentDrawingCache(I)V
    .registers 3
    .parameter "drawingCacheToKeep"

    .prologue
    .line 4464
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4465
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 3048
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3049
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .registers 2

    .prologue
    .line 5172
    const/4 v0, 0x1

    return v0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .parameter "originalView"

    .prologue
    .line 565
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 572
    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startLayoutAnimation()V
    .registers 2

    .prologue
    .line 4258
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_d

    .line 4259
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4260
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 4262
    :cond_d
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 4877
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_14

    .line 4878
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 4879
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 4881
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4883
    :cond_14
    return-void
.end method

.method unFocus()V
    .registers 2

    .prologue
    .line 696
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 697
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 698
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 700
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 701
    return-void
.end method

.method updateLocalSystemUiVisibility(II)V
    .registers 7
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 1210
    invoke-super {p0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 1212
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1213
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1214
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_12

    .line 1215
    aget-object v0, v1, v3

    .line 1216
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 1214
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1218
    .end local v0           #child:Landroid/view/View;
    :cond_12
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "view"
    .parameter "params"

    .prologue
    .line 3220
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3223
    :cond_1f
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_3c

    .line 3224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3226
    :cond_3c
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3227
    return-void
.end method
