.class public Lmokee/fingerprint/FingerprintShortcutManager;
.super Ljava/lang/Object;
.source "FingerprintShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmokee/fingerprint/FingerprintShortcutManager$ComponentTarget;,
        Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;,
        Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTarget;,
        Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;,
        Lmokee/fingerprint/FingerprintShortcutManager$Target;
    }
.end annotation


# static fields
.field private static final FLAG_SHORTCUT_ALL:I = 0xb

.field private static final TAG:Ljava/lang/String; = "FingerprintShortcutManager"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDensity:I

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static synthetic -get0(Lmokee/fingerprint/FingerprintShortcutManager;)Landroid/content/pm/LauncherApps;
    .locals 1

    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method static synthetic -wrap0(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 1
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lmokee/fingerprint/FingerprintShortcutManager;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lmokee/fingerprint/FingerprintShortcutManager;->getShortcutInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activity"    # Landroid/content/pm/ActivityInfo;

    .prologue
    invoke-direct {p0, p1}, Lmokee/fingerprint/FingerprintShortcutManager;->getActivityIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    invoke-direct {p0, p1}, Lmokee/fingerprint/FingerprintShortcutManager;->getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ActivityInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "activity"    # Landroid/content/pm/ActivityInfo;

    .prologue
    invoke-direct {p0, p1}, Lmokee/fingerprint/FingerprintShortcutManager;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap5(Lmokee/fingerprint/FingerprintShortcutManager;Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    invoke-direct {p0, p1}, Lmokee/fingerprint/FingerprintShortcutManager;->getShortcutLabel(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 57
    const-string/jumbo v0, "launcherapps"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    .line 59
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mDensity:I

    .line 53
    return-void
.end method

.method private getActivityIcon(Landroid/content/pm/ActivityInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activity"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 137
    if-nez p1, :cond_0

    .line 138
    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 126
    if-nez p1, :cond_0

    .line 127
    return-object v3

    .line 130
    :cond_0
    :try_start_0
    iget-object v1, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 131
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v3
.end method

.method private getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "activity"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 145
    if-nez p1, :cond_0

    .line 146
    return-object v0

    .line 149
    :cond_0
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method private getShortcutIcon(Landroid/content/pm/ShortcutInfo;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    const/4 v0, 0x0

    .line 170
    if-nez p1, :cond_0

    .line 171
    return-object v0

    .line 174
    :cond_0
    iget-object v0, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    iget v1, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mDensity:I

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getShortcutInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "shortcutId"    # Ljava/lang/String;

    .prologue
    .line 153
    new-instance v3, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v3}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v3

    .line 155
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 153
    invoke-virtual {v3, v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v3

    .line 156
    const/16 v4, 0xb

    .line 153
    invoke-virtual {v3, v4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    move-result-object v0

    .line 158
    .local v0, "query":Landroid/content/pm/LauncherApps$ShortcutQuery;
    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 160
    .local v2, "userHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v3, v0, v2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    .line 162
    .local v1, "shortcuts":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ShortcutInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 163
    const/4 v3, 0x0

    return-object v3

    .line 166
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ShortcutInfo;

    return-object v3
.end method

.method private getShortcutLabel(Landroid/content/pm/ShortcutInfo;)Ljava/lang/CharSequence;
    .locals 7
    .param p1, "shortcut"    # Landroid/content/pm/ShortcutInfo;

    .prologue
    const/4 v6, 0x0

    .line 178
    if-nez p1, :cond_0

    .line 179
    return-object v6

    .line 182
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getActivity()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct {p0, v5}, Lmokee/fingerprint/FingerprintShortcutManager;->getActivityInfo(Landroid/content/ComponentName;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 183
    .local v0, "activity":Landroid/content/pm/ActivityInfo;
    invoke-direct {p0, v0}, Lmokee/fingerprint/FingerprintShortcutManager;->getActivityLabel(Landroid/content/pm/ActivityInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 184
    .local v1, "activityLabel":Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 185
    return-object v6

    .line 188
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 189
    .local v2, "longLabel":Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v3

    .line 192
    .local v3, "shortLabel":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v4, v2

    .line 194
    .local v4, "shortcutLabel":Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 195
    return-object v6

    .end local v4    # "shortcutLabel":Ljava/lang/CharSequence;
    :cond_2
    move-object v4, v3

    .line 192
    goto :goto_0

    .line 198
    .restart local v4    # "shortcutLabel":Ljava/lang/CharSequence;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private persist(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lmokee/fingerprint/FingerprintShortcutManager$Target;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 111
    .local p1, "shortcuts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/fingerprint/FingerprintShortcutManager$Target;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 114
    if-lez v1, :cond_0

    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmokee/fingerprint/FingerprintShortcutManager$Target;

    invoke-virtual {v2}, Lmokee/fingerprint/FingerprintShortcutManager$Target;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v2, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 121
    const-string/jumbo v3, "fingerprint_shortcuts"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v2, v3, v4}, Lmokee/providers/MKSettings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 110
    return-void
.end method


# virtual methods
.method public addShortcut(ILmokee/fingerprint/FingerprintShortcutManager$Target;)V
    .locals 1
    .param p1, "fingerId"    # I
    .param p2, "target"    # Lmokee/fingerprint/FingerprintShortcutManager$Target;

    .prologue
    .line 99
    invoke-virtual {p0}, Lmokee/fingerprint/FingerprintShortcutManager;->getShortcuts()Landroid/util/SparseArray;

    move-result-object v0

    .line 100
    .local v0, "shortcuts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/fingerprint/FingerprintShortcutManager$Target;>;"
    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    invoke-direct {p0, v0}, Lmokee/fingerprint/FingerprintShortcutManager;->persist(Landroid/util/SparseArray;)V

    .line 98
    return-void
.end method

.method public getShortcuts()Landroid/util/SparseArray;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<",
            "Lmokee/fingerprint/FingerprintShortcutManager$Target;",
            ">;"
        }
    .end annotation

    .prologue
    .line 71
    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5}, Landroid/util/SparseArray;-><init>()V

    .line 74
    .local v5, "shortcuts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/fingerprint/FingerprintShortcutManager$Target;>;"
    iget-object v6, p0, Lmokee/fingerprint/FingerprintShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 75
    const-string/jumbo v7, "fingerprint_shortcuts"

    .line 73
    invoke-static {v6, v7}, Lmokee/providers/MKSettings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 77
    .local v4, "shortcutMappings":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 78
    return-object v5

    .line 81
    :cond_0
    const-string/jumbo v6, ";"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v1, v7, v6

    .line 82
    .local v1, "line":Ljava/lang/String;
    const-string/jumbo v9, ":"

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, "mapping":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, "fingerId":I
    const/4 v9, 0x1

    aget-object v9, v2, v9

    const-string/jumbo v10, "cmp"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 86
    new-instance v9, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;

    const/4 v10, 0x2

    aget-object v10, v2, v10

    const/4 v11, 0x0

    invoke-direct {v9, p0, v10, v11}, Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;-><init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Lmokee/fingerprint/FingerprintShortcutManager$ComponentTargetImpl;)V

    invoke-virtual {v5, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 84
    :cond_2
    const-string/jumbo v10, "shortcut"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 89
    const/4 v9, 0x2

    aget-object v9, v2, v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "shortcut":[Ljava/lang/String;
    new-instance v9, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;

    const/4 v10, 0x0

    aget-object v10, v3, v10

    const/4 v11, 0x1

    aget-object v11, v3, v11

    const/4 v12, 0x0

    invoke-direct {v9, p0, v10, v11, v12}, Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;-><init>(Lmokee/fingerprint/FingerprintShortcutManager;Ljava/lang/String;Ljava/lang/String;Lmokee/fingerprint/FingerprintShortcutManager$ShortcutTargetImpl;)V

    invoke-virtual {v5, v0, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 95
    .end local v0    # "fingerId":I
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "mapping":[Ljava/lang/String;
    .end local v3    # "shortcut":[Ljava/lang/String;
    :cond_3
    return-object v5
.end method

.method public removeShortcut(I)V
    .locals 1
    .param p1, "fingerId"    # I

    .prologue
    .line 105
    invoke-virtual {p0}, Lmokee/fingerprint/FingerprintShortcutManager;->getShortcuts()Landroid/util/SparseArray;

    move-result-object v0

    .line 106
    .local v0, "shortcuts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/fingerprint/FingerprintShortcutManager$Target;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 107
    invoke-direct {p0, v0}, Lmokee/fingerprint/FingerprintShortcutManager;->persist(Landroid/util/SparseArray;)V

    .line 104
    return-void
.end method

.method public startShortcutAsUser(ILandroid/os/UserHandle;)V
    .locals 2
    .param p1, "fingerId"    # I
    .param p2, "user"    # Landroid/os/UserHandle;

    .prologue
    .line 63
    invoke-virtual {p0}, Lmokee/fingerprint/FingerprintShortcutManager;->getShortcuts()Landroid/util/SparseArray;

    move-result-object v0

    .line 64
    .local v0, "shortcuts":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lmokee/fingerprint/FingerprintShortcutManager$Target;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmokee/fingerprint/FingerprintShortcutManager$Target;

    .line 65
    .local v1, "target":Lmokee/fingerprint/FingerprintShortcutManager$Target;
    if-eqz v1, :cond_0

    .line 66
    invoke-virtual {v1, p2}, Lmokee/fingerprint/FingerprintShortcutManager$Target;->startAsUser(Landroid/os/UserHandle;)V

    .line 62
    :cond_0
    return-void
.end method
