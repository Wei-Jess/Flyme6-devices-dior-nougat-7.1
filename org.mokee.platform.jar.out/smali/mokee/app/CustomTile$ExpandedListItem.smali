.class public Lmokee/app/CustomTile$ExpandedListItem;
.super Lmokee/app/CustomTile$ExpandedItem;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedListItem"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 825
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmokee/app/CustomTile$ExpandedItem;-><init>(Lmokee/app/CustomTile$ExpandedItem;)V

    return-void
.end method


# virtual methods
.method public setExpandedListItemBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedListItem;->internalSetItemBitmap(Landroid/graphics/Bitmap;)V

    .line 868
    return-void
.end method

.method public setExpandedListItemDrawable(I)V
    .locals 0
    .param p1, "resourceId"    # I

    .prologue
    .line 857
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedListItem;->internalSetItemDrawable(I)V

    .line 856
    return-void
.end method

.method public setExpandedListItemOnClickIntent(Landroid/app/PendingIntent;)V
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 849
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedListItem;->internalSetOnClickPendingIntent(Landroid/app/PendingIntent;)V

    .line 848
    return-void
.end method

.method public setExpandedListItemSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 841
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedListItem;->internalSetItemSummary(Ljava/lang/String;)V

    .line 840
    return-void
.end method

.method public setExpandedListItemTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 833
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedListItem;->internalSetItemTitle(Ljava/lang/String;)V

    .line 832
    return-void
.end method
