.class Lcom/samsung/mms/location/FavoritePlacesList$1;
.super Ljava/lang/Object;
.source "FavoritePlacesList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/mms/location/FavoritePlacesList;->showNoInternetDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/mms/location/FavoritePlacesList;


# direct methods
.method constructor <init>(Lcom/samsung/mms/location/FavoritePlacesList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/mms/location/FavoritePlacesList$1;->this$0:Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/mms/location/FavoritePlacesList$1;->this$0:Lcom/samsung/mms/location/FavoritePlacesList;

    invoke-virtual {v0}, Lcom/samsung/mms/location/FavoritePlacesList;->finish()V

    return-void
.end method
