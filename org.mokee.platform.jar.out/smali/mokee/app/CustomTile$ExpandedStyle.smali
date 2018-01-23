.class public Lmokee/app/CustomTile$ExpandedStyle;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExpandedStyle"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/CustomTile$ExpandedStyle$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/app/CustomTile$ExpandedStyle;",
            ">;"
        }
    .end annotation
.end field

.field public static final GRID_STYLE:I = 0x0

.field public static final LIST_STYLE:I = 0x1

.field public static final NO_STYLE:I = -0x1

.field public static final REMOTE_STYLE:I = 0x2


# instance fields
.field private contentViews:Landroid/widget/RemoteViews;

.field private expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

.field private styleId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 510
    new-instance v0, Lmokee/app/CustomTile$ExpandedStyle$1;

    invoke-direct {v0}, Lmokee/app/CustomTile$ExpandedStyle$1;-><init>()V

    .line 509
    sput-object v0, Lmokee/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 348
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    const/4 v0, -0x1

    iput v0, p0, Lmokee/app/CustomTile$ExpandedStyle;->styleId:I

    .line 369
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 377
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 380
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 385
    .local v1, "parcelableVersion":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_1

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    sget-object v2, Lmokee/app/CustomTile$ExpandedItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lmokee/app/CustomTile$ExpandedItem;

    iput-object v2, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    .line 389
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmokee/app/CustomTile$ExpandedStyle;->styleId:I

    .line 392
    :cond_1
    const/4 v2, 0x2

    if-lt v1, v2, :cond_2

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 394
    sget-object v2, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViews;

    iput-object v2, p0, Lmokee/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    .line 399
    :cond_2
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 377
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/app/CustomTile$ExpandedStyle;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/app/CustomTile$ExpandedStyle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Lmokee/app/CustomTile$ExpandedStyle;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lmokee/app/CustomTile$ExpandedStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public getContentViews()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lmokee/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    return-object v0
.end method

.method public getExpandedItems()[Lmokee/app/CustomTile$ExpandedItem;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    return-object v0
.end method

.method public getStyle()I
    .locals 1

    .prologue
    .line 458
    iget v0, p0, Lmokee/app/CustomTile$ExpandedStyle;->styleId:I

    return v0
.end method

.method protected internalSetExpandedItems(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<+",
            "Lmokee/app/CustomTile$ExpandedItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 415
    .local p1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<+Lmokee/app/CustomTile$ExpandedItem;>;"
    iget v0, p0, Lmokee/app/CustomTile$ExpandedStyle;->styleId:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x9

    if-le v0, v1, :cond_0

    .line 416
    const-class v0, Lmokee/app/CustomTile;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 417
    const-string/jumbo v1, "Attempted to publish greater than max grid item count"

    .line 416
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lmokee/app/CustomTile$ExpandedItem;

    iput-object v0, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    .line 420
    iget-object v0, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 414
    return-void
.end method

.method protected internalSetRemoteViews(Landroid/widget/RemoteViews;)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 427
    iput-object p1, p0, Lmokee/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    .line 426
    return-void
.end method

.method protected internalStyleId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 434
    iput p1, p0, Lmokee/app/CustomTile$ExpandedStyle;->styleId:I

    .line 433
    return-void
.end method

.method public setBuilder(Lmokee/app/CustomTile$Builder;)V
    .locals 0
    .param p1, "builder"    # Lmokee/app/CustomTile$Builder;

    .prologue
    .line 406
    if-eqz p1, :cond_0

    .line 407
    invoke-virtual {p1, p0}, Lmokee/app/CustomTile$Builder;->setExpandedStyle(Lmokee/app/CustomTile$ExpandedStyle;)Lmokee/app/CustomTile$Builder;

    .line 405
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .prologue
    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 496
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v3, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    if-eqz v3, :cond_0

    .line 497
    const-string/jumbo v3, "expandedItems= "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    iget-object v4, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    const/4 v3, 0x0

    array-length v5, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 499
    .local v2, "item":Lmokee/app/CustomTile$ExpandedItem;
    const-string/jumbo v6, "     item="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lmokee/app/CustomTile$ExpandedItem;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 502
    .end local v2    # "item":Lmokee/app/CustomTile$ExpandedItem;
    :cond_0
    const-string/jumbo v3, "styleId="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lmokee/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "i"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 469
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 472
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 474
    iget-object v1, p0, Lmokee/app/CustomTile$ExpandedStyle;->expandedItems:[Lmokee/app/CustomTile$ExpandedItem;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 478
    :goto_0
    iget v1, p0, Lmokee/app/CustomTile$ExpandedStyle;->styleId:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 481
    iget-object v1, p0, Lmokee/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    if-eqz v1, :cond_1

    .line 482
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 483
    iget-object v1, p0, Lmokee/app/CustomTile$ExpandedStyle;->contentViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1, v2}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 489
    :goto_1
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 467
    return-void

    .line 476
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 485
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
