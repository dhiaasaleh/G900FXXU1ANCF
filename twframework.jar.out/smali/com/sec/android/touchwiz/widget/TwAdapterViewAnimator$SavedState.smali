.class Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "TwAdapterViewAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field whichChild:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState$1;

    invoke-direct {v0}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState$1;-><init>()V

    sput-object v0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;->whichChild:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcelable;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    iput p2, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;->whichChild:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TwAdapterViewAnimator.SavedState{ whichChild = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;->whichChild:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    iget v0, p0, Lcom/sec/android/touchwiz/widget/TwAdapterViewAnimator$SavedState;->whichChild:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
