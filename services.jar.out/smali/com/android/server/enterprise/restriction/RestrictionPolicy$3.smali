.class final Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;
.super Ljava/util/HashMap;
.source "RestrictionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/restriction/RestrictionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "pointer_location"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "show_touches"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy$3;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
