.class Landroid/view/VolumePanel$StreamControl;
.super Ljava/lang/Object;
.source "VolumePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/VolumePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StreamControl"
.end annotation


# instance fields
.field group:Landroid/view/ViewGroup;

.field icon:Landroid/widget/ImageView;

.field iconMuteRes:I

.field iconRes:I

.field seekbarView:Landroid/widget/ExtSeekBar;

.field streamType:I

.field final synthetic this$0:Landroid/view/VolumePanel;

.field underDivider:Landroid/widget/ImageView;

.field volTitle:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/VolumePanel;)V
    .locals 0

    iput-object p1, p0, Landroid/view/VolumePanel$StreamControl;->this$0:Landroid/view/VolumePanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VolumePanel;Landroid/view/VolumePanel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/VolumePanel$StreamControl;-><init>(Landroid/view/VolumePanel;)V

    return-void
.end method