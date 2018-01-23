.class final Lmokee/app/CustomTile$ExpandedItem$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile$ExpandedItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lmokee/app/CustomTile$ExpandedItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 760
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedItem$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/app/CustomTile$ExpandedItem;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/app/CustomTile$ExpandedItem;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 761
    new-instance v0, Lmokee/app/CustomTile$ExpandedItem;

    invoke-direct {v0, p1}, Lmokee/app/CustomTile$ExpandedItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedItem$1;->newArray(I)[Lmokee/app/CustomTile$ExpandedItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/app/CustomTile$ExpandedItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 766
    new-array v0, p1, [Lmokee/app/CustomTile$ExpandedItem;

    return-object v0
.end method
