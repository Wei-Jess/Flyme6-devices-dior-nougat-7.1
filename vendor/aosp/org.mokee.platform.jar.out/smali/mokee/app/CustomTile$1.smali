.class final Lmokee/app/CustomTile$1;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile;
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
        "Lmokee/app/CustomTile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 878
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/app/CustomTile;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 879
    new-instance v0, Lmokee/app/CustomTile;

    invoke-direct {v0, p1}, Lmokee/app/CustomTile;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 883
    invoke-virtual {p0, p1}, Lmokee/app/CustomTile$1;->newArray(I)[Lmokee/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/app/CustomTile;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 884
    new-array v0, p1, [Lmokee/app/CustomTile;

    return-object v0
.end method
