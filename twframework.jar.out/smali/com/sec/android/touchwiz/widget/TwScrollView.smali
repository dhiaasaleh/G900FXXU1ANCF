.class public Lcom/sec/android/touchwiz/widget/TwScrollView;
.super Landroid/widget/FrameLayout;
.source "TwScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/touchwiz/widget/TwScrollView$1;,
        Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    }
.end annotation


# static fields
.field static final ANIMATED_SCROLL_GAP:I = 0xfa

.field static DEBUG_SCROLL:Z = false

.field static DEBUG_VELOCITY_TRACKER_TRACE:Z = false

.field private static final HOVERSCROLL_DOWN:I = 0x2

.field private static final HOVERSCROLL_MOVE:I = 0x1

.field private static final HOVERSCROLL_UP:I = 0x1

.field private static final INVALID_POINTER:I = -0x1

.field static final MAX_SCROLL_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "TwScrollView"


# instance fields
.field private HOVERSCROLL_DELAY:I

.field private HOVERSCROLL_SPEED:I

.field private isHoveringUIEnabled:Z

.field private mActivePointerId:I

.field private mChildToScrollTo:Landroid/view/View;

.field private mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

.field private mFillViewport:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field private mFlingStrictSpan:Landroid/os/StrictMode$Span;

.field private mHoverAreaEnter:Z

.field private mHoverBottomAreaHeight:I

.field private mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

.field private mHoverRecognitionCurrentTime:I

.field private mHoverRecognitionDurationTime:I

.field private mHoverRecognitionStartTime:I

.field private mHoverScrollDirection:I

.field private mHoverScrollEnable:Z

.field private mHoverScrollSpeed:I

.field private mHoverScrollStartTime:I

.field private mHoverScrollTimeInterval:I

.field private mHoverTopAreaHeight:I

.field private mIsBeingDragged:Z

.field private mIsHoverOverscrolled:Z

.field private mIsLayoutDirty:Z

.field private mLastMotionY:I

.field private mLastScroll:J

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOverflingDistance:I

.field private mOverscrollDistance:I

.field private mScrollStrictSpan:Landroid/os/StrictMode$Span;

.field private mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

.field private mSmoothScrollingEnabled:Z

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_SCROLL:Z

    sput-boolean v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->DEBUG_VELOCITY_TRACKER_TRACE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010080

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    iput-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    const/16 v2, 0x1e

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    const/16 v2, 0x32

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    const/16 v2, 0x12c

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    iput v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    iput-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    const/16 v2, 0xa

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    const/16 v2, 0xf

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initScrollView()V

    sget-object v2, Lcom/android/internal/R$styleable;->ScrollView:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFillViewport(Z)V

    const/16 v2, 0x2d

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setOverScrollMode(I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.feature.hovering_ui"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->printStackTrace()V

    const-string v2, "TwScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IndexOutOfBoundsException occured: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/IndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1100(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/sec/android/touchwiz/widget/TwScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/touchwiz/widget/TwScrollView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/sec/android/touchwiz/widget/TwScrollView;)Lcom/sec/android/touchwiz/widget/TwEdgeEffect;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionCurrentTime:I

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionDurationTime:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    return v0
.end method

.method static synthetic access$600(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollTimeInterval:I

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/touchwiz/widget/TwScrollView;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollSpeed:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    return v0
.end method

.method static synthetic access$900(Lcom/sec/android/touchwiz/widget/TwScrollView;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    return v0
.end method

.method private canScroll()Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private static clamp(III)I
    .locals 1

    if-ge p1, p2, :cond_0

    if-gez p0, :cond_2

    :cond_0
    const/4 p0, 0x0

    :cond_1
    :goto_0
    return p0

    :cond_2
    add-int v0, p1, p0

    if-le v0, p2, :cond_1

    sub-int p0, p2, p1

    goto :goto_0
.end method

.method private doScrollY(I)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v1, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_0
.end method

.method private endDrag()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method private findFocusableViewInBounds(ZII)Landroid/view/View;
    .locals 11

    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getFocusables(I)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_8

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ge p2, v6, :cond_0

    if-ge v9, p3, :cond_0

    if-ge p2, v9, :cond_1

    if-ge v6, p3, :cond_1

    const/4 v8, 0x1

    :goto_1
    if-nez v1, :cond_2

    move-object v1, v5

    move v3, v8

    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v9, v10, :cond_4

    :cond_3
    if-nez p1, :cond_5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v10

    if-le v6, v10, :cond_5

    :cond_4
    const/4 v7, 0x1

    :goto_3
    if-eqz v3, :cond_6

    if-eqz v8, :cond_0

    if-eqz v7, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    if-eqz v8, :cond_7

    move-object v1, v5

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    if-eqz v7, :cond_0

    move-object v1, v5

    goto :goto_2

    :cond_8
    return-object v1
.end method

.method private getScrollRange()I
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    :cond_0
    return v1
.end method

.method private inChild(II)Z
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v3, v1

    if-lt p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    sub-int/2addr v3, v1

    if-ge p2, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    if-lt p1, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    if-ge p1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initScrollView()V
    .locals 3

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setFocusable(Z)V

    const/high16 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setWillNotDraw(Z)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    return-void
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private isOffScreen(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3

    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    invoke-static {v0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isWithinDeltaOfScreen(Landroid/view/View;II)Z
    .locals 2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private scrollAndFocus(III)Z
    .locals 8

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    add-int v0, v1, v4

    const/16 v7, 0x21

    if-ne p1, v7, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-direct {p0, v6, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocusableViewInBounds(ZII)Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_0

    move-object v5, p0

    :cond_0
    if-lt p2, v1, :cond_3

    if-gt p3, v0, :cond_3

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v7

    if-eq v5, v7, :cond_1

    invoke-virtual {v5, p1}, Landroid/view/View;->requestFocus(I)Z

    :cond_1
    return v3

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    if-eqz v6, :cond_4

    sub-int v2, p2, v1

    :goto_2
    invoke-direct {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_1

    :cond_4
    sub-int v2, p3, v0

    goto :goto_2
.end method

.method private scrollToChild(Landroid/view/View;)V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    :cond_0
    return-void
.end method

.method private scrollToChildRect(Landroid/graphics/Rect;Z)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    :cond_0
    :goto_1
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    goto :goto_1
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ScrollView can host only one direct child"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public arrowScroll(I)Z
    .locals 11

    const/16 v10, 0x82

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v8

    invoke-virtual {v8, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMaxScrollAmount()I

    move-result v3

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v8

    invoke-direct {p0, v4, v3, v8}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v7}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v6

    invoke-direct {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    invoke-virtual {v4, p1}, Landroid/view/View;->requestFocus(I)Z

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getDescendantFocusability()I

    move-result v2

    const/high16 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestFocus()Z

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->setDescendantFocusability(I)V

    :cond_1
    const/4 v7, 0x1

    :cond_2
    return v7

    :cond_3
    move v6, v3

    const/16 v8, 0x21

    if-ne p1, v8, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    if-ge v8, v6, :cond_5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    :cond_4
    :goto_1
    if-eqz v6, :cond_2

    if-ne p1, v10, :cond_6

    move v7, v6

    :goto_2
    invoke-direct {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0

    :cond_5
    if-ne p1, v10, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-lez v8, :cond_4

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v8

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v5, v8, v9

    sub-int v8, v1, v5

    if-ge v8, v3, :cond_4

    sub-int v6, v1, v5

    goto :goto_1

    :cond_6
    neg-int v7, v6

    goto :goto_2
.end method

.method public computeScroll()V
    .locals 14

    const/4 v10, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrX()I

    move-result v12

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrY()I

    move-result v13

    if-ne v3, v12, :cond_0

    if-eq v4, v13, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v11

    if-eqz v11, :cond_1

    if-ne v11, v10, :cond_4

    if-lez v6, :cond_4

    :cond_1
    :goto_0
    sub-int v1, v12, v3

    sub-int v2, v13, v4

    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverflingDistance:I

    move-object v0, p0

    move v7, v5

    move v9, v5

    invoke-virtual/range {v0 .. v9}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    if-eqz v10, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_2

    if-gez v13, :cond_5

    if-ltz v4, :cond_5

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    :cond_3
    :goto_2
    return-void

    :cond_4
    move v10, v5

    goto :goto_0

    :cond_5
    if-le v13, v6, :cond_2

    if-gt v4, v6, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    goto :goto_2
.end method

.method protected computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I
    .locals 10

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    add-int v4, v5, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v2

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-lez v8, :cond_2

    add-int/2addr v5, v2

    :cond_2
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    if-ge v8, v9, :cond_3

    sub-int/2addr v4, v2

    :cond_3
    const/4 v6, 0x0

    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    if-le v8, v4, :cond_5

    iget v8, p1, Landroid/graphics/Rect;->top:I

    if-le v8, v5, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-le v8, v3, :cond_4

    iget v8, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    :goto_1
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int v1, v0, v4

    invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    goto :goto_0

    :cond_4
    iget v8, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v4

    add-int/2addr v6, v8

    goto :goto_1

    :cond_5
    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ge v7, v5, :cond_0

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v7, v4, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    if-le v7, v3, :cond_6

    iget v7, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v4, v7

    sub-int/2addr v6, v7

    :goto_2
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v7

    neg-int v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto :goto_0

    :cond_6
    iget v7, p1, Landroid/graphics/Rect;->top:I

    sub-int v7, v5, v7

    sub-int/2addr v6, v7

    goto :goto_2
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    const/4 v0, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->computeVerticalScrollOffset()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v0, v5, v6

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v5, v3, v0

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-gez v4, :cond_2

    sub-int/2addr v3, v4

    :cond_1
    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    if-le v4, v2, :cond_1

    sub-int v5, v4, v2

    add-int/2addr v3, v5

    goto :goto_1
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "pen_hovering"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v5, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "pen_hovering_list_scroll"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    const/4 v4, 0x1

    :goto_1
    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    if-nez v13, :cond_0

    new-instance v13, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;-><init>(Lcom/sec/android/touchwiz/widget/TwScrollView;Lcom/sec/android/touchwiz/widget/TwScrollView$1;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->isHoveringUIEnabled:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    if-eqz v13, :cond_2

    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_1

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    if-eqz v7, :cond_2

    if-nez v6, :cond_5

    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    :goto_2
    return v13

    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v13

    float-to-int v11, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    float-to-int v12, v13

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v10

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    :cond_6
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_d

    const/4 v8, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-le v12, v13, :cond_7

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v13, v2, v13

    if-lt v12, v13, :cond_9

    :cond_7
    if-lez v11, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getRight()I

    move-result v13

    if-gt v11, v13, :cond_9

    if-lez v10, :cond_9

    if-eqz v8, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v13

    const/4 v14, 0x2

    if-eq v13, v14, :cond_9

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isLockScreenMode()Z

    move-result v13

    if-eqz v13, :cond_e

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->removeMessages(I)V

    const/4 v13, 0x1

    const/4 v14, -0x1

    :try_start_0
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    const/4 v14, 0x1

    if-eq v13, v14, :cond_b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    if-eqz v13, :cond_c

    :cond_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x1

    const/4 v14, -0x1

    :try_start_1
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    :goto_5
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    :cond_d
    const/4 v8, 0x0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v13, "TwScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_1
    move-exception v3

    const-string v13, "TwScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_0

    :cond_10
    :goto_6
    :pswitch_0
    const/4 v13, 0x1

    goto/16 :goto_2

    :pswitch_1
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    if-ltz v12, :cond_11

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-gt v12, v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    const/16 v13, 0xb

    const/4 v14, -0x1

    :try_start_2
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :catch_2
    move-exception v3

    const-string v13, "TwScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_11
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v13, v2, v13

    if-lt v12, v13, :cond_10

    if-gt v12, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    const/16 v13, 0xf

    const/4 v14, -0x1

    :try_start_3
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_8
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_6

    :catch_3
    move-exception v3

    const-string v13, "TwScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    if-nez v13, :cond_12

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    const/16 v13, 0xa

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/MotionEvent;->setAction(I)V

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    :cond_12
    if-ltz v12, :cond_14

    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverTopAreaHeight:I

    if-gt v12, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_13

    const/16 v13, 0xb

    const/4 v14, -0x1

    :try_start_4
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_13
    :goto_9
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    const/4 v13, 0x2

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :catch_4
    move-exception v3

    const-string v13, "TwScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLUP"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_14
    move-object/from16 v0, p0

    iget v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverBottomAreaHeight:I

    sub-int v13, v2, v13

    if-lt v12, v13, :cond_10

    if-gt v12, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-nez v13, :cond_10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    long-to-int v13, v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    if-nez v13, :cond_15

    const/16 v13, 0xf

    const/4 v14, -0x1

    :try_start_5
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_15
    :goto_a
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v9

    const/4 v13, 0x1

    iput v13, v9, Landroid/os/Message;->what:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollDirection:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    invoke-virtual {v13, v9}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_6

    :catch_5
    move-exception v3

    const-string v13, "TwScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_SCROLLDOWN"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->hasMessages(I)Z

    move-result v13

    if-eqz v13, :cond_16

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverHandler:Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/sec/android/touchwiz/widget/TwScrollView$HoverScrollHandler;->removeMessages(I)V

    :cond_16
    const/4 v13, 0x1

    const/4 v14, -0x1

    :try_start_6
    invoke-static {v13, v14}, Landroid/view/PointerIcon;->setHoveringSpenIcon(II)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverRecognitionStartTime:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollStartTime:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsHoverOverscrolled:Z

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverAreaEnter:Z

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v13

    goto/16 :goto_2

    :catch_6
    move-exception v3

    const-string v13, "TwScrollView"

    const-string v14, "Failed to change Pen Point to HOVERING_SPENICON_DEFAULT"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v4, :cond_3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v5

    invoke-virtual {v4, v3, v5}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    :cond_0
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int v3, v4, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    neg-int v4, v3

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v4, 0x4334

    int-to-float v5, v3

    const/4 v6, 0x0

    invoke-virtual {p1, v4, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, v3, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setSize(II)V

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v4, p1}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v3, 0x0

    const/16 v4, 0x21

    const/16 v5, 0x82

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->canScroll()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isFocused()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    invoke-virtual {v4, p0, v0, v5}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eq v2, p0, :cond_1

    invoke-virtual {v2, v5}, Landroid/view/View;->requestFocus(I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    :goto_0
    return v3

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    move v3, v1

    goto :goto_0

    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->arrowScroll(I)Z

    move-result v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fullScroll(I)Z

    move-result v1

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->pageScroll(I)Z

    goto :goto_1

    :cond_6
    move v3, v5

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method

.method public fling(I)V
    .locals 13

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v12, v0, v1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v11

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v4, v11, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v8

    div-int/lit8 v10, v12, 0x2

    move v4, p1

    move v5, v3

    move v6, v3

    move v7, v3

    move v9, v3

    invoke-virtual/range {v0 .. v10}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->fling(IIIIIIIIII)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_0

    const-string v0, "ScrollView-fling"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method public fullScroll(I)Z
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_0
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int v0, v3, v4

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int/2addr v3, v4

    sub-int v2, v3, v0

    if-ge v2, v1, :cond_1

    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f80

    goto :goto_0
.end method

.method public getMaxScrollAmount()I
    .locals 3

    const/high16 v0, 0x3f00

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mBottom:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTop:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalFadingEdgeLength()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f80

    goto :goto_0
.end method

.method public getTouchSlop()I
    .locals 1

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    return v0
.end method

.method public isFillViewport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    return v0
.end method

.method public isLockScreenMode()Z
    .locals 8

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    const-string v7, "keyguard"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    const/4 v3, 0x0

    invoke-virtual {v4}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mContext:Landroid/content/Context;

    const-string v6, "window"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    const/4 v1, 0x1

    if-eqz v5, :cond_0

    :try_start_0
    invoke-interface {v5}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v6, "TwScrollView"

    const-string v7, "isLockScreenMode() : failed to windowManager.isCoverOpen()"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSmoothScrollingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v1

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_1
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_0
    return v5

    :pswitch_0
    iget-boolean v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v5, :cond_0

    const/16 v5, 0x9

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v5, v4, v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getVerticalScrollFactor()F

    move-result v5

    mul-float/2addr v5, v4

    float-to-int v0, v5

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v3

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v1, v2, v0

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_1
    :goto_1
    if-eq v1, v2, :cond_0

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-super {p0, v5, v1}, Landroid/widget/FrameLayout;->scrollTo(II)V

    const/4 v5, 0x1

    goto :goto_0

    :cond_2
    if-le v1, v3, :cond_1

    move v1, v3

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v1, Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v1, Lcom/sec/android/touchwiz/widget/TwScrollView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-lez v1, :cond_0

    const/16 v1, 0x2000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_0
    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-ge v1, v0, :cond_1

    const/16 v1, 0x1000

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->canScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    goto :goto_0

    :pswitch_1
    iget v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    if-eq v8, v2, :cond_2

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    if-ne v10, v2, :cond_3

    const-string v0, "TwScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    if-le v12, v1, :cond_2

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v1, :cond_4

    const-string v1, "ScrollView-scroll"

    invoke-static {v1}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {p0, v1, v11}, Lcom/sec/android/touchwiz/widget/TwScrollView;->inChild(II)Z

    move-result v1

    if-nez v1, :cond_5

    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    goto :goto_1

    :cond_5
    iput v11, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initOrResetVelocityTracker()V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_6

    move v3, v0

    :cond_6
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    if-nez v0, :cond_2

    const-string v0, "ScrollView-scroll"

    invoke-static {v0}, Landroid/os/StrictMode;->enterCriticalSpan(Ljava/lang/String;)Landroid/os/StrictMode$Span;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollStrictSpan:Landroid/os/StrictMode$Span;

    goto/16 :goto_1

    :pswitch_3
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    iput v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollTo(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    iget-boolean v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    add-int/2addr v6, v7

    iget v7, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v6, v7}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildMeasureSpec(III)I

    move-result v2

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v3, v6

    iget v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v3, v6

    const/high16 v6, 0x4000

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->invalidateParentIfNeeded()V

    if-eqz p4, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->awakenScrollBars()Z

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    const/16 p1, 0x82

    :cond_0
    :goto_0
    if-nez p2, :cond_3

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_4

    :cond_1
    :goto_2
    return v1

    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 p1, 0x21

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, p2, p1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-direct {p0, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isOffScreen(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isWithinDeltaOfScreen(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->computeScrollDeltaToGetChildRectOnScreen(Landroid/graphics/Rect;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->doScrollY(I)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 29

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->initVelocityTrackerIfNotExists()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v3, v0, 0xff

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    :goto_1
    return v3

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-eqz v25, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v3}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v18

    const/4 v3, -0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_5

    const-string v3, "TwScrollView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid pointerId="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " in onTouchEvent"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    sub-int v5, v3, v28

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-nez v3, :cond_7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    if-le v3, v4, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-eqz v25, :cond_6

    const/4 v3, 0x1

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_6
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-lez v5, :cond_c

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    sub-int/2addr v5, v3

    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move/from16 v23, v0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getOverScrollMode()I

    move-result v24

    if-eqz v24, :cond_8

    const/4 v3, 0x1

    move/from16 v0, v24

    if-ne v0, v3, :cond_d

    if-lez v9, :cond_d

    :cond_8
    const/16 v19, 0x1

    :goto_4
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mOverscrollDistance:I

    const/4 v12, 0x1

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v12}, Lcom/sec/android/touchwiz/widget/TwScrollView;->overScrollBy(IIIIIIIIZ)Z

    move-result v3

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    :cond_9
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onScrollChanged(IIII)V

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_0

    add-int v26, v23, v5

    if-gez v26, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    :cond_a
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    goto/16 :goto_0

    :cond_c
    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    add-int/2addr v5, v3

    goto/16 :goto_3

    :cond_d
    const/16 v19, 0x0

    goto :goto_4

    :cond_e
    move/from16 v0, v26

    if-le v0, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    int-to-float v4, v5

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onPull(F)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->isFinished()Z

    move-result v3

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->onRelease()V

    goto :goto_5

    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v27, v0

    const/16 v3, 0x3e8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMaximumVelocity:I

    int-to-float v4, v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_f

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(I)I

    move-result v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mMinimumVelocity:I

    if-le v3, v4, :cond_10

    move/from16 v0, v21

    neg-int v3, v0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->fling(I)V

    :cond_f
    :goto_6
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    goto :goto_6

    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsBeingDragged:Z

    if-eqz v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    move-object/from16 v0, p0

    iget v11, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move-object/from16 v0, p0

    iget v12, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v16

    invoke-virtual/range {v10 .. v16}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    :cond_11
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    invoke-direct/range {p0 .. p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->endDrag()V

    goto/16 :goto_0

    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    goto/16 :goto_0

    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastMotionY:I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public pageScroll(I)Z
    .locals 7

    const/4 v4, 0x0

    const/16 v5, 0x82

    if-ne p1, v5, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v2

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v5

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {p0, v4}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v5

    sub-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->top:I

    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v2

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v4, v5}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollAndFocus(III)Z

    move-result v4

    return v4

    :cond_1
    move v1, v4

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gez v5, :cond_0

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTempRect:Landroid/graphics/Rect;

    iput v4, v5, Landroid/graphics/Rect;->top:I

    goto :goto_1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    add-int/2addr v4, v1

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getScrollRange()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_0

    :sswitch_1
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v1, v4, v5

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int/2addr v4, v1

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq v0, v4, :cond_3

    invoke-virtual {p0, v3, v0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollTo(II)V

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1000 -> :sswitch_0
        0x2000 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChild(Landroid/view/View;)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mChildToScrollTo:Landroid/view/View;

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    invoke-direct {p0, p2, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollToChildRect(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->recycleVelocityTracker()V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mIsLayoutDirty:Z

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public scrollTo(II)V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingRight:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingLeft:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-static {p2, v1, v2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->clamp(III)I

    move-result p2

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    if-ne p1, v1, :cond_0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    if-eq p2, v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public setFillViewport(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFillViewport:Z

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setHoverScrollDelay(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_DELAY:I

    return-void
.end method

.method public setHoverScrollMode(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mHoverScrollEnable:Z

    goto :goto_0
.end method

.method public setHoverScrollSpeed(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->HOVERSCROLL_SPEED:I

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    new-instance v1, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-direct {v1, v0}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    return-void

    :cond_1
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    goto :goto_0
.end method

.method public setSmoothScrollingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mSmoothScrollingEnabled:Z

    return-void
.end method

.method public setTouchSlop(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mTouchSlop:I

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final smoothScrollBy(II)V
    .locals 11

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    sub-long v1, v6, v8

    const-wide/16 v6, 0xfa

    cmp-long v6, v1, v6

    if-lez v6, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v6, v7

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v3, v6, v7

    invoke-virtual {p0, v10}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v6, v0, v3

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    add-int v6, v5, p2

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v10, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    sub-int p2, v6, v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v7, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    invoke-virtual {v6, v7, v5, v10, p2}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIII)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v6}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v6}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollByWithDuration(III)V
    .locals 11

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    sub-long v7, v0, v4

    const-wide/16 v0, 0xfa

    cmp-long v0, v7, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mPaddingTop:I

    sub-int v9, v0, v1

    invoke-virtual {p0, v3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int v0, v6, v9

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v10

    iget v2, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    add-int v0, v2, p2

    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int p2, v0, v2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwScrollView;->postInvalidateOnAnimation()V

    :goto_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mLastScroll:J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScroller:Lcom/sec/android/touchwiz/widget/TwOverScroller;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwOverScroller;->abortAnimation()V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    invoke-virtual {v0}, Landroid/os/StrictMode$Span;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mFlingStrictSpan:Landroid/os/StrictMode$Span;

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method public final smoothScrollTo(II)V
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollBy(II)V

    return-void
.end method

.method public final smoothScrollToWithDuration(III)V
    .locals 2

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollX:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mScrollY:I

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1, p3}, Lcom/sec/android/touchwiz/widget/TwScrollView;->smoothScrollByWithDuration(III)V

    return-void
.end method

.method public updateCustomEdgeGlow(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowTop:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwScrollView;->mEdgeGlowBottom:Lcom/sec/android/touchwiz/widget/TwEdgeEffect;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/touchwiz/widget/TwEdgeEffect;->setTouchWizCustomization(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
