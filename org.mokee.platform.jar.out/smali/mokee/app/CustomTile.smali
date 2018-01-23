.class public Lmokee/app/CustomTile;
.super Ljava/lang/Object;
.source "CustomTile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/app/CustomTile$1;,
        Lmokee/app/CustomTile$Builder;,
        Lmokee/app/CustomTile$ExpandedGridItem;,
        Lmokee/app/CustomTile$ExpandedItem;,
        Lmokee/app/CustomTile$ExpandedListItem;,
        Lmokee/app/CustomTile$ExpandedStyle;,
        Lmokee/app/CustomTile$GridExpandedStyle;,
        Lmokee/app/CustomTile$ListExpandedStyle;,
        Lmokee/app/CustomTile$RemoteExpandedStyle;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/app/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field public static final PSEUDO_GRID_ITEM_MAX_COUNT:I = 0x9


# instance fields
.field public collapsePanel:Z

.field public contentDescription:Ljava/lang/String;

.field public deleteIntent:Landroid/app/PendingIntent;

.field public expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

.field public icon:I

.field public label:Ljava/lang/String;

.field public onClick:Landroid/app/PendingIntent;

.field public onClickUri:Landroid/net/Uri;

.field public onLongClick:Landroid/app/PendingIntent;

.field public onSettingsClick:Landroid/content/Intent;

.field public remoteIcon:Landroid/graphics/Bitmap;

.field private resourcesPackageName:Ljava/lang/String;

.field public sensitiveData:Z


# direct methods
.method static synthetic -set0(Lmokee/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 877
    new-instance v0, Lmokee/app/CustomTile$1;

    invoke-direct {v0}, Lmokee/app/CustomTile$1;-><init>()V

    .line 876
    sput-object v0, Lmokee/app/CustomTile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v0, ""

    iput-object v0, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/app/CustomTile;->collapsePanel:Z

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmokee/app/CustomTile;->sensitiveData:Z

    .line 190
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const-string/jumbo v2, ""

    iput-object v2, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 122
    iput-boolean v3, p0, Lmokee/app/CustomTile;->collapsePanel:Z

    .line 129
    iput-boolean v4, p0, Lmokee/app/CustomTile;->sensitiveData:Z

    .line 136
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 137
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v1

    .line 142
    .local v1, "parcelableVersion":I
    if-lt v1, v3, :cond_6

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    .line 147
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 149
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 150
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 152
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_3

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    .line 155
    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_4

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 158
    :cond_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_5

    .line 159
    sget-object v2, Lmokee/app/CustomTile$ExpandedStyle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmokee/app/CustomTile$ExpandedStyle;

    iput-object v2, p0, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    .line 161
    :cond_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lmokee/app/CustomTile;->icon:I

    .line 164
    :cond_6
    const/4 v2, 0x2

    if-lt v1, v2, :cond_9

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_b

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lmokee/app/CustomTile;->collapsePanel:Z

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_7

    .line 168
    sget-object v2, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iput-object v2, p0, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 170
    :cond_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_8

    .line 171
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 173
    :cond_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v3, :cond_c

    :goto_1
    iput-boolean v3, p0, Lmokee/app/CustomTile;->sensitiveData:Z

    .line 176
    :cond_9
    const/4 v2, 0x4

    if-lt v1, v2, :cond_a

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_a

    .line 178
    sget-object v2, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/PendingIntent;

    iput-object v2, p0, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    .line 183
    :cond_a
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 134
    return-void

    :cond_b
    move v2, v4

    .line 166
    goto :goto_0

    :cond_c
    move v3, v4

    .line 173
    goto :goto_1
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
    .line 201
    invoke-virtual {p0}, Lmokee/app/CustomTile;->clone()Lmokee/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lmokee/app/CustomTile;
    .locals 1

    .prologue
    .line 202
    new-instance v0, Lmokee/app/CustomTile;

    invoke-direct {v0}, Lmokee/app/CustomTile;-><init>()V

    .line 203
    .local v0, "that":Lmokee/app/CustomTile;
    invoke-virtual {p0, v0}, Lmokee/app/CustomTile;->cloneInto(Lmokee/app/CustomTile;)V

    .line 204
    return-object v0
.end method

.method public cloneInto(Lmokee/app/CustomTile;)V
    .locals 1
    .param p1, "that"    # Lmokee/app/CustomTile;

    .prologue
    .line 251
    iget-object v0, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    iput-object v0, p1, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    iput-object v0, p1, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 253
    iget-object v0, p0, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    iput-object v0, p1, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    .line 254
    iget-object v0, p0, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    iput-object v0, p1, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 255
    iget-object v0, p0, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    iput-object v0, p1, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 256
    iget-object v0, p0, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    iput-object v0, p1, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    iput-object v0, p1, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 258
    iget-object v0, p0, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    iput-object v0, p1, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    .line 259
    iget v0, p0, Lmokee/app/CustomTile;->icon:I

    iput v0, p1, Lmokee/app/CustomTile;->icon:I

    .line 260
    iget-boolean v0, p0, Lmokee/app/CustomTile;->collapsePanel:Z

    iput-boolean v0, p1, Lmokee/app/CustomTile;->collapsePanel:Z

    .line 261
    iget-object v0, p0, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 262
    iget-object v0, p0, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    iput-object v0, p1, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 263
    iget-boolean v0, p0, Lmokee/app/CustomTile;->sensitiveData:Z

    iput-boolean v0, p1, Lmokee/app/CustomTile;->sensitiveData:Z

    .line 250
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public getResourcesPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v1, "b":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "NEW_LINE":Ljava/lang/String;
    iget-object v2, p0, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v2, :cond_0

    .line 212
    const-string/jumbo v2, "onClickUri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    :cond_0
    iget-object v2, p0, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 215
    const-string/jumbo v2, "onClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_1
    iget-object v2, p0, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    if-eqz v2, :cond_2

    .line 218
    const-string/jumbo v2, "onLongClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :cond_2
    iget-object v2, p0, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v2, :cond_3

    .line 221
    const-string/jumbo v2, "onSettingsClick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_3
    iget-object v2, p0, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 224
    const-string/jumbo v2, "label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_4
    iget-object v2, p0, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 227
    const-string/jumbo v2, "contentDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    :cond_5
    iget-object v2, p0, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    if-eqz v2, :cond_6

    .line 230
    const-string/jumbo v2, "expandedStyle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    :cond_6
    const-string/jumbo v2, "icon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lmokee/app/CustomTile;->icon:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    const-string/jumbo v2, "resourcesPackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string/jumbo v2, "collapsePanel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmokee/app/CustomTile;->collapsePanel:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    iget-object v2, p0, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    .line 237
    const-string/jumbo v2, "remoteIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getGenerationId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_7
    iget-object v2, p0, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_8

    .line 240
    const-string/jumbo v2, "deleteIntent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_8
    const-string/jumbo v2, "sensitiveData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lmokee/app/CustomTile;->sensitiveData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 274
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v0

    .line 277
    .local v0, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v1, p0, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 278
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-object v1, p0, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 283
    :goto_0
    iget-object v1, p0, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    iget-object v1, p0, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 289
    :goto_1
    iget-object v1, p0, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 290
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object v1, p0, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    invoke-virtual {v1, p1, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    :goto_2
    iget-object v1, p0, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 296
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget-object v1, p0, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    :goto_3
    iget-object v1, p0, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 302
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget-object v1, p0, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 307
    :goto_4
    iget-object v1, p0, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    if-eqz v1, :cond_5

    .line 308
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    iget-object v1, p0, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    invoke-virtual {v1, p1, v3}, Lmokee/app/CustomTile$ExpandedStyle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 313
    :goto_5
    iget v1, p0, Lmokee/app/CustomTile;->icon:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget-object v1, p0, Lmokee/app/CustomTile;->resourcesPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 317
    iget-boolean v1, p0, Lmokee/app/CustomTile;->collapsePanel:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget-object v1, p0, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_7

    .line 319
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget-object v1, p0, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 324
    :goto_7
    iget-object v1, p0, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    .line 325
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    iget-object v1, p0, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 330
    :goto_8
    iget-boolean v1, p0, Lmokee/app/CustomTile;->sensitiveData:Z

    if-eqz v1, :cond_9

    move v1, v2

    :goto_9
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 333
    iget-object v1, p0, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    if-eqz v1, :cond_a

    .line 334
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 335
    iget-object v1, p0, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1, v3}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 341
    :goto_a
    invoke-virtual {v0}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 272
    return-void

    .line 281
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 287
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 293
    :cond_2
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 299
    :cond_3
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 305
    :cond_4
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 311
    :cond_5
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    :cond_6
    move v1, v3

    .line 317
    goto :goto_6

    .line 322
    :cond_7
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 328
    :cond_8
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    :cond_9
    move v1, v3

    .line 330
    goto :goto_9

    .line 337
    :cond_a
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a
.end method
