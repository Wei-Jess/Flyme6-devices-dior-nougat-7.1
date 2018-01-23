.class public final Lmokee/themes/ThemeChangeRequest;
.super Ljava/lang/Object;
.source "ThemeChangeRequest.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/themes/ThemeChangeRequest$1;,
        Lmokee/themes/ThemeChangeRequest$Builder;,
        Lmokee/themes/ThemeChangeRequest$RequestType;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lmokee/themes/ThemeChangeRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_WALLPAPER_ID:I = -0x1


# instance fields
.field private final mPerAppOverlays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

.field private final mThemeComponents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lmokee/themes/ThemeChangeRequest$1;

    invoke-direct {v0}, Lmokee/themes/ThemeChangeRequest$1;-><init>()V

    .line 177
    sput-object v0, Lmokee/themes/ThemeChangeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 33
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    .line 37
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    .line 39
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lmokee/themes/ThemeChangeRequest;->mWallpaperId:J

    .line 131
    invoke-static {p1}, Lmokee/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v2

    .line 132
    .local v2, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    invoke-virtual {v2}, Lmokee/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v3

    .line 134
    .local v3, "parcelableVersion":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 135
    .local v1, "numComponents":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 136
    iget-object v4, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 141
    iget-object v4, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_1
    invoke-static {}, Lmokee/themes/ThemeChangeRequest$RequestType;->values()[Lmokee/themes/ThemeChangeRequest$RequestType;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    aget-object v4, v4, v5

    iput-object v4, p0, Lmokee/themes/ThemeChangeRequest;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lmokee/themes/ThemeChangeRequest;->mWallpaperId:J

    .line 147
    invoke-virtual {v2}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 129
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lmokee/themes/ThemeChangeRequest;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lmokee/themes/ThemeChangeRequest;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Ljava/util/Map;Lmokee/themes/ThemeChangeRequest$RequestType;J)V
    .locals 2
    .param p3, "requestType"    # Lmokee/themes/ThemeChangeRequest$RequestType;
    .param p4, "wallpaperId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lmokee/themes/ThemeChangeRequest$RequestType;",
            "J)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p2, "perAppThemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    .line 39
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lmokee/themes/ThemeChangeRequest;->mWallpaperId:J

    .line 119
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 122
    :cond_0
    if-eqz p2, :cond_1

    .line 123
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 125
    :cond_1
    iput-object p3, p0, Lmokee/themes/ThemeChangeRequest;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    .line 126
    iput-wide p4, p0, Lmokee/themes/ThemeChangeRequest;->mWallpaperId:J

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Map;Ljava/util/Map;Lmokee/themes/ThemeChangeRequest$RequestType;JLmokee/themes/ThemeChangeRequest;)V
    .locals 0
    .param p1, "components"    # Ljava/util/Map;
    .param p2, "perAppThemes"    # Ljava/util/Map;
    .param p3, "requestType"    # Lmokee/themes/ThemeChangeRequest$RequestType;
    .param p4, "wallpaperId"    # J

    .prologue
    invoke-direct/range {p0 .. p5}, Lmokee/themes/ThemeChangeRequest;-><init>(Ljava/util/Map;Ljava/util/Map;Lmokee/themes/ThemeChangeRequest$RequestType;J)V

    return-void
.end method

.method private getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "componentName"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    const-string/jumbo v0, "mods_alarms"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBootanimationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    const-string/jumbo v0, "mods_bootanim"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFontThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, "mods_fonts"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIconsThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "mods_icons"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveLockScreenThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string/jumbo v0, "mods_live_lock_screen"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "mods_lockscreen"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNavBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    const-string/jumbo v0, "mods_navigation_bar"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    const-string/jumbo v0, "mods_notifications"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumChangesRequested()I
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v1, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getOverlayThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string/jumbo v0, "mods_overlays"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPerAppOverlays()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getReqeustType()Lmokee/themes/ThemeChangeRequest$RequestType;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    return-object v0
.end method

.method public getRingtoneThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    const-string/jumbo v0, "mods_ringtones"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusBarThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string/jumbo v0, "mods_status_bar"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getThemeComponentsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getWallpaperId()J
    .locals 2

    .prologue
    .line 94
    iget-wide v0, p0, Lmokee/themes/ThemeChangeRequest;->mWallpaperId:J

    return-wide v0
.end method

.method public getWallpaperThemePackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "mods_homescreen"

    invoke-direct {p0, v0}, Lmokee/themes/ThemeChangeRequest;->getThemePackageNameForComponent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 8
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 158
    invoke-static {p1}, Lmokee/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lmokee/os/Concierge$ParcelInfo;

    move-result-object v4

    .line 160
    .local v4, "parcelInfo":Lmokee/os/Concierge$ParcelInfo;
    iget-object v5, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v5, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "component$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "component":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v5, p0, Lmokee/themes/ThemeChangeRequest;->mThemeComponents:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 165
    .end local v2    # "component":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v5, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "appPkgName$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 167
    .local v0, "appPkgName":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v5, p0, Lmokee/themes/ThemeChangeRequest;->mPerAppOverlays:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 170
    .end local v0    # "appPkgName":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lmokee/themes/ThemeChangeRequest;->mRequestType:Lmokee/themes/ThemeChangeRequest$RequestType;

    invoke-virtual {v5}, Lmokee/themes/ThemeChangeRequest$RequestType;->ordinal()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-wide v6, p0, Lmokee/themes/ThemeChangeRequest;->mWallpaperId:J

    invoke-virtual {p1, v6, v7}, Landroid/os/Parcel;->writeLong(J)V

    .line 174
    invoke-virtual {v4}, Lmokee/os/Concierge$ParcelInfo;->complete()V

    .line 156
    return-void
.end method
