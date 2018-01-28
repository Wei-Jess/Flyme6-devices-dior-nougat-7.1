.class public Lmokee/app/StatusBarPanelCustomTile;
.super Ljava/lang/Object;
.source "StatusBarPanelCustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/StatusBarPanelCustomTile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/app/StatusBarPanelCustomTile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final customTile:Lmokee/app/CustomTile;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private final opPkg:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final resPkg:Ljava/lang/String;

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lmokee/app/StatusBarPanelCustomTile$1;

    invoke-direct {v0}, Lmokee/app/StatusBarPanelCustomTile$1;-><init>()V

    .line 141
    sput-object v0, Lmokee/app/StatusBarPanelCustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 14
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 77
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 80
    .local v1, "parcelableVersion":I
    const/4 v7, 0x0

    .line 81
    .local v7, "tmpResPkg":Ljava/lang/String;
    const/4 v6, 0x0

    .line 82
    .local v6, "tmpPkg":Ljava/lang/String;
    const/4 v4, 0x0

    .line 83
    .local v4, "tmpOpPkg":Ljava/lang/String;
    const/4 v3, -0x1

    .line 84
    .local v3, "tmpId":I
    const/4 v10, 0x0

    .line 85
    .local v10, "tmpTag":Ljava/lang/String;
    const/4 v11, -0x1

    .line 86
    .local v11, "tmpUid":I
    const/4 v5, -0x1

    .line 87
    .local v5, "tmpPid":I
    const/4 v2, 0x0

    .line 88
    .local v2, "tmpCustomTile":Lmokee/app/CustomTile;
    const/4 v12, 0x0

    .line 89
    .local v12, "tmpUser":Landroid/os/UserHandle;
    const-wide/16 v8, -0x1

    .line 94
    .local v8, "tmpPostTime":J
    const/4 v13, 0x1

    if-lt v1, v13, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 97
    .local v6, "tmpPkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "tmpOpPkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 104
    .end local v10    # "tmpTag":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 106
    new-instance v2, Lmokee/app/CustomTile;

    .end local v2    # "tmpCustomTile":Lmokee/app/CustomTile;
    invoke-direct {v2, p1}, Lmokee/app/CustomTile;-><init>(Landroid/os/Parcel;)V

    .line 107
    .local v2, "tmpCustomTile":Lmokee/app/CustomTile;
    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v12

    .line 108
    .local v12, "tmpUser":Landroid/os/UserHandle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 111
    .end local v2    # "tmpCustomTile":Lmokee/app/CustomTile;
    .end local v4    # "tmpOpPkg":Ljava/lang/String;
    .end local v6    # "tmpPkg":Ljava/lang/String;
    .end local v12    # "tmpUser":Landroid/os/UserHandle;
    :cond_0
    const/4 v13, 0x2

    if-lt v1, v13, :cond_1

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 116
    .end local v7    # "tmpResPkg":Ljava/lang/String;
    :cond_1
    iput-object v7, p0, Lmokee/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    .line 117
    iput-object v6, p0, Lmokee/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    .line 118
    iput-object v4, p0, Lmokee/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 119
    iput v3, p0, Lmokee/app/StatusBarPanelCustomTile;->id:I

    .line 120
    iput-object v10, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    .line 121
    iput v11, p0, Lmokee/app/StatusBarPanelCustomTile;->uid:I

    .line 122
    iput v5, p0, Lmokee/app/StatusBarPanelCustomTile;->initialPid:I

    .line 123
    iput-object v2, p0, Lmokee/app/StatusBarPanelCustomTile;->customTile:Lmokee/app/CustomTile;

    .line 124
    iput-object v12, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    .line 125
    iput-wide v8, p0, Lmokee/app/StatusBarPanelCustomTile;->postTime:J

    .line 126
    invoke-direct {p0}, Lmokee/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v13

    iput-object v13, p0, Lmokee/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    .line 129
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 74
    return-void

    .line 102
    .local v2, "tmpCustomTile":Lmokee/app/CustomTile;
    .restart local v4    # "tmpOpPkg":Ljava/lang/String;
    .restart local v6    # "tmpPkg":Ljava/lang/String;
    .restart local v7    # "tmpResPkg":Ljava/lang/String;
    .restart local v10    # "tmpTag":Ljava/lang/String;
    .local v12, "tmpUser":Landroid/os/UserHandle;
    :cond_2
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILmokee/app/CustomTile;Landroid/os/UserHandle;)V
    .locals 12
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lmokee/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    .line 50
    invoke-direct/range {v0 .. v11}, Lmokee/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILmokee/app/CustomTile;Landroid/os/UserHandle;J)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILmokee/app/CustomTile;Landroid/os/UserHandle;J)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "resPkg"    # Ljava/lang/String;
    .param p3, "opPkg"    # Ljava/lang/String;
    .param p4, "id"    # I
    .param p5, "tag"    # Ljava/lang/String;
    .param p6, "uid"    # I
    .param p7, "initialPid"    # I
    .param p8, "customTile"    # Lmokee/app/CustomTile;
    .param p9, "user"    # Landroid/os/UserHandle;
    .param p10, "postTime"    # J

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 60
    :cond_1
    iput-object p1, p0, Lmokee/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lmokee/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lmokee/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 63
    iput p4, p0, Lmokee/app/StatusBarPanelCustomTile;->id:I

    .line 64
    iput-object p5, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    .line 65
    iput p6, p0, Lmokee/app/StatusBarPanelCustomTile;->uid:I

    .line 66
    iput p7, p0, Lmokee/app/StatusBarPanelCustomTile;->initialPid:I

    .line 67
    iput-object p8, p0, Lmokee/app/StatusBarPanelCustomTile;->customTile:Lmokee/app/CustomTile;

    .line 68
    iput-object p9, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    .line 69
    iput-wide p10, p0, Lmokee/app/StatusBarPanelCustomTile;->postTime:J

    .line 70
    invoke-direct {p0}, Lmokee/app/StatusBarPanelCustomTile;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private key()Ljava/lang/String;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmokee/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lmokee/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-virtual {p0}, Lmokee/app/StatusBarPanelCustomTile;->clone()Lmokee/app/StatusBarPanelCustomTile;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lmokee/app/StatusBarPanelCustomTile;
    .locals 12

    .prologue
    .line 197
    new-instance v0, Lmokee/app/StatusBarPanelCustomTile;

    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    iget-object v2, p0, Lmokee/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    iget-object v3, p0, Lmokee/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    .line 198
    iget v4, p0, Lmokee/app/StatusBarPanelCustomTile;->id:I

    iget-object v5, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    iget v6, p0, Lmokee/app/StatusBarPanelCustomTile;->uid:I

    iget v7, p0, Lmokee/app/StatusBarPanelCustomTile;->initialPid:I

    .line 199
    iget-object v8, p0, Lmokee/app/StatusBarPanelCustomTile;->customTile:Lmokee/app/CustomTile;

    invoke-virtual {v8}, Lmokee/app/CustomTile;->clone()Lmokee/app/CustomTile;

    move-result-object v8

    iget-object v9, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    iget-wide v10, p0, Lmokee/app/StatusBarPanelCustomTile;->postTime:J

    .line 197
    invoke-direct/range {v0 .. v11}, Lmokee/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILmokee/app/CustomTile;Landroid/os/UserHandle;J)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    return v0
.end method

.method public getCustomTile()Lmokee/app/CustomTile;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->customTile:Lmokee/app/CustomTile;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 216
    iget v0, p0, Lmokee/app/StatusBarPanelCustomTile;->id:I

    return v0
.end method

.method public getInitialPid()I
    .locals 1

    .prologue
    .line 248
    iget v0, p0, Lmokee/app/StatusBarPanelCustomTile;->initialPid:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    .prologue
    .line 260
    iget-wide v0, p0, Lmokee/app/StatusBarPanelCustomTile;->postTime:J

    return-wide v0
.end method

.method public getResPkg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lmokee/app/StatusBarPanelCustomTile;->uid:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 255
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public persistableKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 170
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 173
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget v1, p0, Lmokee/app/StatusBarPanelCustomTile;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 177
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->tag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    :goto_0
    iget v1, p0, Lmokee/app/StatusBarPanelCustomTile;->uid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v1, p0, Lmokee/app/StatusBarPanelCustomTile;->initialPid:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->customTile:Lmokee/app/CustomTile;

    invoke-virtual {v1, p1, p2}, Lmokee/app/CustomTile;->writeToParcel(Landroid/os/Parcel;I)V

    .line 185
    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    iget-wide v2, p0, Lmokee/app/StatusBarPanelCustomTile;->postTime:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 189
    iget-object v1, p0, Lmokee/app/StatusBarPanelCustomTile;->resPkg:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 168
    return-void

    .line 180
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
