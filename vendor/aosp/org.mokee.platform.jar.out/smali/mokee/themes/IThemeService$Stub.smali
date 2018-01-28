.class public abstract Lmokee/themes/IThemeService$Stub;
.super Landroid/os/Binder;
.source "IThemeService.java"

# interfaces
.implements Lmokee/themes/IThemeService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/themes/IThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/themes/IThemeService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "mokee.themes.IThemeService"

.field static final TRANSACTION_applyDefaultTheme:I = 0x4

.field static final TRANSACTION_getLastThemeChangeRequestType:I = 0xd

.field static final TRANSACTION_getLastThemeChangeTime:I = 0xc

.field static final TRANSACTION_getProgress_5:I = 0x6

.field static final TRANSACTION_isThemeApplying_4:I = 0x5

.field static final TRANSACTION_isThemeBeingProcessed_7:I = 0x8

.field static final TRANSACTION_processThemeResources_6:I = 0x7

.field static final TRANSACTION_rebuildResourceCache:I = 0xb

.field static final TRANSACTION_registerThemeProcessingListener:I = 0x9

.field static final TRANSACTION_removeUpdates:I = 0x2

.field static final TRANSACTION_requestThemeChange:I = 0x3

.field static final TRANSACTION_requestThemeChangeUpdates:I = 0x1

.field static final TRANSACTION_unregisterThemeProcessingListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 70
    const-string/jumbo v0, "mokee.themes.IThemeService"

    invoke-virtual {p0, p0, v0}, Lmokee/themes/IThemeService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 78
    if-nez p0, :cond_0

    .line 79
    return-object v1

    .line 81
    :cond_0
    const-string/jumbo v1, "mokee.themes.IThemeService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 82
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmokee/themes/IThemeService;

    if-eqz v1, :cond_1

    .line 83
    check-cast v0, Lmokee/themes/IThemeService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 85
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmokee/themes/IThemeService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmokee/themes/IThemeService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 89
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
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
    const/4 v4, 0x0

    const/4 v9, 0x1

    .line 93
    sparse-switch p1, :sswitch_data_0

    .line 212
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v9

    return v9

    .line 97
    :sswitch_0
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    return v9

    .line 102
    :sswitch_1
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lmokee/themes/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeChangeListener;

    move-result-object v1

    .line 105
    .local v1, "_arg0":Lmokee/themes/IThemeChangeListener;
    invoke-virtual {p0, v1}, Lmokee/themes/IThemeService$Stub;->requestThemeChangeUpdates(Lmokee/themes/IThemeChangeListener;)V

    .line 106
    return v9

    .line 110
    .end local v1    # "_arg0":Lmokee/themes/IThemeChangeListener;
    :sswitch_2
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lmokee/themes/IThemeChangeListener$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeChangeListener;

    move-result-object v1

    .line 113
    .restart local v1    # "_arg0":Lmokee/themes/IThemeChangeListener;
    invoke-virtual {p0, v1}, Lmokee/themes/IThemeService$Stub;->removeUpdates(Lmokee/themes/IThemeChangeListener;)V

    .line 114
    return v9

    .line 118
    .end local v1    # "_arg0":Lmokee/themes/IThemeChangeListener;
    :sswitch_3
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    .line 121
    sget-object v10, Lmokee/themes/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmokee/themes/ThemeChangeRequest;

    .line 127
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    move v4, v9

    .line 128
    .local v4, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v3, v4}, Lmokee/themes/IThemeService$Stub;->requestThemeChange(Lmokee/themes/ThemeChangeRequest;Z)V

    .line 129
    return v9

    .line 124
    .end local v4    # "_arg1":Z
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg0":Lmokee/themes/ThemeChangeRequest;
    goto :goto_0

    .line 133
    .end local v3    # "_arg0":Lmokee/themes/ThemeChangeRequest;
    :sswitch_4
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lmokee/themes/IThemeService$Stub;->applyDefaultTheme()V

    .line 135
    return v9

    .line 139
    :sswitch_5
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lmokee/themes/IThemeService$Stub;->isThemeApplying()Z

    move-result v8

    .line 141
    .local v8, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v8, :cond_2

    move v4, v9

    :cond_2
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    return v9

    .line 147
    .end local v8    # "_result":Z
    :sswitch_6
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lmokee/themes/IThemeService$Stub;->getProgress()I

    move-result v5

    .line 149
    .local v5, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 150
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    return v9

    .line 155
    .end local v5    # "_result":I
    :sswitch_7
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmokee/themes/IThemeService$Stub;->processThemeResources(Ljava/lang/String;)Z

    move-result v8

    .line 159
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    if-eqz v8, :cond_3

    move v4, v9

    :cond_3
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    return v9

    .line 165
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_8
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lmokee/themes/IThemeService$Stub;->isThemeBeingProcessed(Ljava/lang/String;)Z

    move-result v8

    .line 169
    .restart local v8    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v8, :cond_4

    move v4, v9

    :cond_4
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    return v9

    .line 175
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v8    # "_result":Z
    :sswitch_9
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lmokee/themes/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeProcessingListener;

    move-result-object v2

    .line 178
    .local v2, "_arg0":Lmokee/themes/IThemeProcessingListener;
    invoke-virtual {p0, v2}, Lmokee/themes/IThemeService$Stub;->registerThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V

    .line 179
    return v9

    .line 183
    .end local v2    # "_arg0":Lmokee/themes/IThemeProcessingListener;
    :sswitch_a
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Lmokee/themes/IThemeProcessingListener$Stub;->asInterface(Landroid/os/IBinder;)Lmokee/themes/IThemeProcessingListener;

    move-result-object v2

    .line 186
    .restart local v2    # "_arg0":Lmokee/themes/IThemeProcessingListener;
    invoke-virtual {p0, v2}, Lmokee/themes/IThemeService$Stub;->unregisterThemeProcessingListener(Lmokee/themes/IThemeProcessingListener;)V

    .line 187
    return v9

    .line 191
    .end local v2    # "_arg0":Lmokee/themes/IThemeProcessingListener;
    :sswitch_b
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lmokee/themes/IThemeService$Stub;->rebuildResourceCache()V

    .line 193
    return v9

    .line 197
    :sswitch_c
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lmokee/themes/IThemeService$Stub;->getLastThemeChangeTime()J

    move-result-wide v6

    .line 199
    .local v6, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 201
    return v9

    .line 205
    .end local v6    # "_result":J
    :sswitch_d
    const-string/jumbo v10, "mokee.themes.IThemeService"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lmokee/themes/IThemeService$Stub;->getLastThemeChangeRequestType()I

    move-result v5

    .line 207
    .restart local v5    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    return v9

    .line 93
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
