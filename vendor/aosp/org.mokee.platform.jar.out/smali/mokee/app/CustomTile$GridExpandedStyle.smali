.class public Lmokee/app/CustomTile$GridExpandedStyle;
.super Lmokee/app/CustomTile$ExpandedStyle;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GridExpandedStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmokee/app/CustomTile$ExpandedStyle;-><init>(Lmokee/app/CustomTile$ExpandedStyle;)V

    .line 531
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmokee/app/CustomTile$GridExpandedStyle;->internalStyleId(I)V

    .line 530
    return-void
.end method


# virtual methods
.method public setGridItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmokee/app/CustomTile$ExpandedGridItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 543
    .local p1, "expandedGridItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmokee/app/CustomTile$ExpandedGridItem;>;"
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$GridExpandedStyle;->internalSetExpandedItems(Ljava/util/ArrayList;)V

    .line 542
    return-void
.end method
