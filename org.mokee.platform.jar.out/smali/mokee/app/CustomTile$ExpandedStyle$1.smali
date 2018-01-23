.class final Lmokee/app/CustomTile$ExpandedStyle$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile$ExpandedStyle;
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
        "Lmokee/app/CustomTile$ExpandedStyle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 511
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedStyle$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/app/CustomTile$ExpandedStyle;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/app/CustomTile$ExpandedStyle;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 512
    new-instance v0, Lmokee/app/CustomTile$ExpandedStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmokee/app/CustomTile$ExpandedStyle;-><init>(Landroid/os/Parcel;Lmokee/app/CustomTile$ExpandedStyle;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 516
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$ExpandedStyle$1;->newArray(I)[Lmokee/app/CustomTile$ExpandedStyle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/app/CustomTile$ExpandedStyle;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 517
    new-array v0, p1, [Lmokee/app/CustomTile$ExpandedStyle;

    return-object v0
.end method
