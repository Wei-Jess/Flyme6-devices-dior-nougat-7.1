.class public abstract Lmokee/media/IMKAudioService$Stub;
.super Landroid/os/Binder;
.source "IMKAudioService.java"

# interfaces
.implements Lmokee/media/IMKAudioService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/media/IMKAudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/media/IMKAudioService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mokee.media.IMKAudioService"

.field static final TRANSACTION_listAudioSessions_0:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string/jumbo v0, "mokee.media.IMKAudioService"

    invoke-virtual {p0, p0, v0}, Lmokee/media/IMKAudioService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmokee/media/IMKAudioService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    return-object v1

    .line 40
    :cond_0
    const-string/jumbo v1, "mokee.media.IMKAudioService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmokee/media/IMKAudioService;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lmokee/media/IMKAudioService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 44
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmokee/media/IMKAudioService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmokee/media/IMKAudioService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const/4 v3, 0x1

    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    return v2

    .line 56
    :sswitch_0
    const-string/jumbo v2, "mokee.media.IMKAudioService"

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    return v3

    .line 61
    :sswitch_1
    const-string/jumbo v2, "mokee.media.IMKAudioService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lmokee/media/IMKAudioService$Stub;->listAudioSessions(I)Ljava/util/List;

    move-result-object v1

    .line 65
    .local v1, "_result":Ljava/util/List;, "Ljava/util/List<Lmokee/media/AudioSessionInfo;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 67
    return v3

    .line 52
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
