.class public Lmokee/app/CustomTile$Builder;
.super Ljava/lang/Object;
.source "CustomTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmokee/app/CustomTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCollapsePanel:Z

.field private mContentDescription:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDeleteIntent:Landroid/app/PendingIntent;

.field private mExpandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

.field private mIcon:I

.field private mLabel:Ljava/lang/String;

.field private mOnClick:Landroid/app/PendingIntent;

.field private mOnClickUri:Landroid/net/Uri;

.field private mOnLongClick:Landroid/app/PendingIntent;

.field private mOnSettingsClick:Landroid/content/Intent;

.field private mRemoteIcon:Landroid/graphics/Bitmap;

.field private mSensitiveData:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmokee/app/CustomTile$Builder;->mCollapsePanel:Z

    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmokee/app/CustomTile$Builder;->mSensitiveData:Z

    .line 925
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    .line 924
    return-void
.end method


# virtual methods
.method public build()Lmokee/app/CustomTile;
    .locals 2

    .prologue
    .line 1090
    new-instance v0, Lmokee/app/CustomTile;

    invoke-direct {v0}, Lmokee/app/CustomTile;-><init>()V

    .line 1091
    .local v0, "tile":Lmokee/app/CustomTile;
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmokee/app/CustomTile;->-set0(Lmokee/app/CustomTile;Ljava/lang/String;)Ljava/lang/String;

    .line 1092
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    iput-object v1, v0, Lmokee/app/CustomTile;->onClick:Landroid/app/PendingIntent;

    .line 1093
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mOnLongClick:Landroid/app/PendingIntent;

    iput-object v1, v0, Lmokee/app/CustomTile;->onLongClick:Landroid/app/PendingIntent;

    .line 1094
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    iput-object v1, v0, Lmokee/app/CustomTile;->onSettingsClick:Landroid/content/Intent;

    .line 1095
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    iput-object v1, v0, Lmokee/app/CustomTile;->onClickUri:Landroid/net/Uri;

    .line 1096
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    iput-object v1, v0, Lmokee/app/CustomTile;->label:Ljava/lang/String;

    .line 1097
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    iput-object v1, v0, Lmokee/app/CustomTile;->contentDescription:Ljava/lang/String;

    .line 1098
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mExpandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    iput-object v1, v0, Lmokee/app/CustomTile;->expandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    .line 1099
    iget v1, p0, Lmokee/app/CustomTile$Builder;->mIcon:I

    iput v1, v0, Lmokee/app/CustomTile;->icon:I

    .line 1100
    iget-boolean v1, p0, Lmokee/app/CustomTile$Builder;->mCollapsePanel:Z

    iput-boolean v1, v0, Lmokee/app/CustomTile;->collapsePanel:Z

    .line 1101
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mRemoteIcon:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lmokee/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    .line 1102
    iget-object v1, p0, Lmokee/app/CustomTile$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Lmokee/app/CustomTile;->deleteIntent:Landroid/app/PendingIntent;

    .line 1103
    iget-boolean v1, p0, Lmokee/app/CustomTile$Builder;->mSensitiveData:Z

    iput-boolean v1, v0, Lmokee/app/CustomTile;->sensitiveData:Z

    .line 1104
    return-object v0
.end method

.method public hasSensitiveData(Z)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 1081
    iput-boolean p1, p0, Lmokee/app/CustomTile$Builder;->mSensitiveData:Z

    .line 1082
    return-object p0
.end method

.method public setContentDescription(I)Lmokee/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 964
    iget-object v0, p0, Lmokee/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmokee/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    .line 965
    return-object p0
.end method

.method public setContentDescription(Ljava/lang/String;)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 954
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mContentDescription:Ljava/lang/String;

    .line 955
    return-object p0
.end method

.method public setDeleteIntent(Landroid/app/PendingIntent;)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 1070
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mDeleteIntent:Landroid/app/PendingIntent;

    .line 1071
    return-object p0
.end method

.method public setExpandedStyle(Lmokee/app/CustomTile$ExpandedStyle;)Lmokee/app/CustomTile$Builder;
    .locals 1
    .param p1, "expandedStyle"    # Lmokee/app/CustomTile$ExpandedStyle;

    .prologue
    .line 1041
    iget-object v0, p0, Lmokee/app/CustomTile$Builder;->mExpandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    if-eq v0, p1, :cond_0

    .line 1042
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mExpandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    .line 1043
    iget-object v0, p0, Lmokee/app/CustomTile$Builder;->mExpandedStyle:Lmokee/app/CustomTile$ExpandedStyle;

    if-eqz v0, :cond_0

    .line 1044
    invoke-virtual {p1, p0}, Lmokee/app/CustomTile$ExpandedStyle;->setBuilder(Lmokee/app/CustomTile$Builder;)V

    .line 1047
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "drawableId"    # I

    .prologue
    .line 1017
    iput p1, p0, Lmokee/app/CustomTile$Builder;->mIcon:I

    .line 1018
    return-object p0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)Lmokee/app/CustomTile$Builder;
    .locals 1
    .param p1, "remoteIcon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lmokee/app/CustomTile$Builder;->mIcon:I

    .line 1031
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mRemoteIcon:Landroid/graphics/Bitmap;

    .line 1032
    return-object p0
.end method

.method public setLabel(I)Lmokee/app/CustomTile$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 944
    iget-object v0, p0, Lmokee/app/CustomTile$Builder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmokee/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    .line 945
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    .line 934
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mLabel:Ljava/lang/String;

    .line 935
    return-object p0
.end method

.method public setOnClickIntent(Landroid/app/PendingIntent;)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 974
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mOnClick:Landroid/app/PendingIntent;

    .line 975
    return-object p0
.end method

.method public setOnClickUri(Landroid/net/Uri;)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1006
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mOnClickUri:Landroid/net/Uri;

    .line 1007
    return-object p0
.end method

.method public setOnLongClickIntent(Landroid/app/PendingIntent;)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 985
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mOnLongClick:Landroid/app/PendingIntent;

    .line 986
    return-object p0
.end method

.method public setOnSettingsClickIntent(Landroid/content/Intent;)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 996
    iput-object p1, p0, Lmokee/app/CustomTile$Builder;->mOnSettingsClick:Landroid/content/Intent;

    .line 997
    return-object p0
.end method

.method public shouldCollapsePanel(Z)Lmokee/app/CustomTile$Builder;
    .locals 0
    .param p1, "bool"    # Z

    .prologue
    .line 1057
    iput-boolean p1, p0, Lmokee/app/CustomTile$Builder;->mCollapsePanel:Z

    .line 1058
    return-object p0
.end method
