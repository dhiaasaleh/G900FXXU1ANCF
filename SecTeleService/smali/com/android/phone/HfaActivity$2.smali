.class Lcom/android/phone/HfaActivity$2;
.super Ljava/lang/Object;
.source "HfaActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/HfaActivity;->buildAndShowDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/HfaActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/HfaActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/HfaActivity$2;->this$0:Lcom/android/phone/HfaActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/phone/HfaActivity$2;->this$0:Lcom/android/phone/HfaActivity;

    #calls: Lcom/android/phone/HfaActivity;->onUserSkip()V
    invoke-static {v0}, Lcom/android/phone/HfaActivity;->access$200(Lcom/android/phone/HfaActivity;)V

    return-void
.end method
