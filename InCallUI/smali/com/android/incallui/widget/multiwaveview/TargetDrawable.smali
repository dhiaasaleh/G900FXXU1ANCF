.class public Lcom/android/incallui/widget/multiwaveview/TargetDrawable;
.super Ljava/lang/Object;
.source "TargetDrawable.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final STATE_ACTIVE:[I = null

.field public static final STATE_FOCUSED:[I = null

.field public static final STATE_INACTIVE:[I = null

.field private static final TAG:Ljava/lang/String; = "TargetDrawable"


# instance fields
.field private mAlpha:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnabled:Z

.field private mNumDrawables:I

.field private mPositionX:F

.field private mPositionY:F

.field private final mResourceId:I

.field private mScaleX:F

.field private mScaleY:F

.field private mTranslationX:F

.field private mTranslationY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_ACTIVE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_FOCUSED:[I

    return-void

    :array_0
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0xa2t 0x0t 0x1t 0x1t
    .end array-data

    :array_1
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
    .end array-data

    :array_2
    .array-data 0x4
        0x9et 0x0t 0x1t 0x1t
        0x5et 0xfft 0xfet 0xfet
        0x9ct 0x0t 0x1t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    iput-boolean v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    iput p2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setDrawable(Landroid/content/res/Resources;I)V

    iput p3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    return-void
.end method

.method public constructor <init>(Lcom/android/incallui/widget/multiwaveview/TargetDrawable;)V
    .locals 3

    const/4 v2, 0x1

    const/high16 v1, 0x3f80

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    iput v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    iput-boolean v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    iput v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    iget v0, p1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    iput v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    iget-object v0, p1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->resizeDrawables()V

    sget-object v0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resizeDrawables()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Landroid/graphics/drawable/StateListDrawable;

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    if-ge v2, v5, :cond_0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v8, v8, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->setBounds(IIII)V

    const/4 v2, 0x0

    :goto_1
    iget v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mNumDrawables:I

    if-ge v2, v5, :cond_2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/StateListDrawable;->selectDrawable(I)Z

    invoke-virtual {v1}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v8, v8, v4, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    invoke-virtual {v5, v8, v8, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    const/high16 v4, -0x4100

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->save(I)I

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    iget v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    iget v2, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    add-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v4

    invoke-virtual {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v4

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionX()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    return v0
.end method

.method public getPositionY()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    return v0
.end method

.method public getResourceId()I
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mResourceId:I

    return v0
.end method

.method public getScaleX()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getX()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    return v0
.end method

.method public getY()F
    .locals 1

    iget v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    return v0
.end method

.method public isActive()Z
    .locals 5

    iget-object v3, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/StateListDrawable;->getState()[I

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v3, v2, v1

    const v4, 0x101009c

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mAlpha:F

    return-void
.end method

.method public setDrawable(Landroid/content/res/Resources;I)V
    .locals 2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_0
    iput-object v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->resizeDrawables()V

    sget-object v1, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->STATE_INACTIVE:[I

    invoke-virtual {p0, v1}, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->setState([I)V

    return-void

    :cond_1
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mEnabled:Z

    return-void
.end method

.method public setPositionX(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionX:F

    return-void
.end method

.method public setPositionY(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mPositionY:F

    return-void
.end method

.method public setScaleX(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleX:F

    return-void
.end method

.method public setScaleY(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mScaleY:F

    return-void
.end method

.method public setState([I)V
    .locals 2

    iget-object v1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/StateListDrawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationX:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/widget/multiwaveview/TargetDrawable;->mTranslationY:F

    return-void
.end method
