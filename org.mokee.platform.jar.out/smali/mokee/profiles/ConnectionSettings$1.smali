.class final Lmokee/profiles/ConnectionSettings$1;
.super Ljava/lang/Object;
.source "ConnectionSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/profiles/ConnectionSettings;
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
        "Lmokee/profiles/ConnectionSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lmokee/profiles/ConnectionSettings$1;->createFromParcel(Landroid/os/Parcel;)Lmokee/profiles/ConnectionSettings;

    move-result-object v0

    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lmokee/profiles/ConnectionSettings;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 152
    new-instance v0, Lmokee/profiles/ConnectionSettings;

    invoke-direct {v0, p1}, Lmokee/profiles/ConnectionSettings;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 156
    invoke-virtual {p0, p1}, Lmokee/profiles/ConnectionSettings$1;->newArray(I)[Lmokee/profiles/ConnectionSettings;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lmokee/profiles/ConnectionSettings;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 157
    new-array v0, p1, [Lmokee/profiles/ConnectionSettings;

    return-object v0
.end method
