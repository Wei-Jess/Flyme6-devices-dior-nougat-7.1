.class public abstract Landroid/media/tv/ITvInputManagerCallback$Stub;
.super Landroid/os/Binder;
.source "ITvInputManagerCallback.java"

# interfaces
.implements Landroid/media/tv/ITvInputManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/ITvInputManagerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.media.tv.ITvInputManagerCallback"

.field static final TRANSACTION_onInputAdded:I = 0x1

.field static final TRANSACTION_onInputRemoved:I = 0x2

.field static final TRANSACTION_onInputStateChanged:I = 0x4

.field static final TRANSACTION_onInputUpdated:I = 0x3

.field static final TRANSACTION_onTvInputInfoUpdated:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p0, p0, v0}, Landroid/media/tv/ITvInputManagerCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvInputManagerCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.media.tv.ITvInputManagerCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/media/tv/ITvInputManagerCallback;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/media/tv/ITvInputManagerCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/media/tv/ITvInputManagerCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 46
    :sswitch_0
    const-string/jumbo v3, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v4

    .line 51
    :sswitch_1
    const-string/jumbo v3, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputAdded(Ljava/lang/String;)V

    .line 55
    return v4

    .line 59
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v3, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 62
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputRemoved(Ljava/lang/String;)V

    .line 63
    return v4

    .line 67
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v3, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 70
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputUpdated(Ljava/lang/String;)V

    .line 71
    return v4

    .line 75
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v3, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 79
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onInputStateChanged(Ljava/lang/String;I)V

    .line 81
    return v4

    .line 85
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string/jumbo v3, "android.media.tv.ITvInputManagerCallback"

    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 88
    sget-object v3, Landroid/media/tv/TvInputInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputInfo;

    .line 93
    :goto_0
    invoke-virtual {p0, v0}, Landroid/media/tv/ITvInputManagerCallback$Stub;->onTvInputInfoUpdated(Landroid/media/tv/TvInputInfo;)V

    .line 94
    return v4

    .line 91
    :cond_0
    const/4 v0, 0x0

    .local v0, "_arg0":Landroid/media/tv/TvInputInfo;
    goto :goto_0

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
