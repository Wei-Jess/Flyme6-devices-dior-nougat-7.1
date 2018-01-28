.class public Lmokee/app/CustomTile$ListExpandedStyle;
.super Lmokee/app/CustomTile$ExpandedStyle;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListExpandedStyle"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 555
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmokee/app/CustomTile$ExpandedStyle;-><init>(Lmokee/app/CustomTile$ExpandedStyle;)V

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmokee/app/CustomTile$ListExpandedStyle;->internalStyleId(I)V

    .line 555
    return-void
.end method


# virtual methods
.method public setListItems(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lmokee/app/CustomTile$ExpandedListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 565
    .local p1, "expandedListItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lmokee/app/CustomTile$ExpandedListItem;>;"
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ListExpandedStyle;->internalSetExpandedItems(Ljava/util/ArrayList;)V

    .line 564
    return-void
.end method
