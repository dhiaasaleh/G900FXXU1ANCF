.class final Lcom/google/common/collect/Iterators$11;
.super Lcom/google/common/collect/AbstractIndexedListIterator;
.source "Iterators.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/collect/Iterators;->forArray([Ljava/lang/Object;)Lcom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/AbstractIndexedListIterator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$array:[Ljava/lang/Object;


# direct methods
.method constructor <init>(I[Ljava/lang/Object;)V
    .locals 0

    iput-object p2, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/Iterators$11;->val$array:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
