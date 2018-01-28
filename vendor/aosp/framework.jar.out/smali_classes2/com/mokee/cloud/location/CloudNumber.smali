.class public Lcom/mokee/cloud/location/CloudNumber;
.super Ljava/lang/Object;
.source "CloudNumber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mokee/cloud/location/CloudNumber$Callback;,
        Lcom/mokee/cloud/location/CloudNumber$EngineType;,
        Lcom/mokee/cloud/location/CloudNumber$PhoneType;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:I

.field private static d:Z

.field private static e:Ljava/lang/String;

.field public static f:Z

.field private static final g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v6, 0x0

    const/4 v1, -0x1

    const/16 v0, 0xd

    new-array v9, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\u00c8\u009c ^d\u00e0k\u00f6\u0089e_p\u00f7p\u00e1\u00c0\u001c\u00fd\u0080$Li\u00f7]\u00fb\u0082*[a\u00cdn\u00f7\u008d$Zl\u00fdl\u00c7\u0082*An\u00e7r\u000b\u00d4\u0081*El\u00fce\u00b8\u009b5\u000e\n\u00d5\u0081\u000eK`\u00d1n\u00f7\u009b!\n\u6790\u51a7\u6216\u532b\u515f\u535a\u543b\u72c3\u90d2\u4ec34\u00b8\u0098,O%\u00fdd\u00fe\u0082,@`\u00b2f\u00f9\u009a$Ld\u00e1g\u00b8\u008c Md\u00e7q\u00fd\u00ce1F`\u00b2l\u00ed\u0083\'Kw\u00b2k\u00eb\u00ce#Aw\u00f7k\u00ff\u0080k\u0016\u00b8\u0098,O%\u00fdd\u00fe\u0082,@`\u00b2f\u00f9\u009a$Ld\u00e1g\u00b6\u0016\u00cc\u00867Kd\u00f6\"\u00fd\u0096&[q\u00f7\"\u00ec\u0087(Kj\u00e7v\u00b9\t\u00f1\u0080,ZZ\u00e6k\u00f5\u008bU\u00f0\u009a1^v\u00a8-\u00b7\u008a$Zd\u00bcj\u00f9\u0081(O+\u00e1m\u00ff\u00810\u0000f\u00fdo\u00b7\u00987Ou\u00fb-\u00e9\u009b \\|\u00cdl\u00ed\u0083\'Kw\u00bcr\u00f0\u009ez@p\u00ff`\u00fd\u009cx\u000bv\u00b4v\u00e1\u009e \u0013o\u00e1m\u00f6\u00c8&Oi\u00fe`\u00f9\u008d.\u0013v\u00fam\u00ef\u0003\u00b3\u00d6s"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v0, 0x10

    move-object v4, v3

    move v5, v6

    move v3, v2

    move v2, v0

    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int v7, v0, v2

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v8, v5

    move-object v5, v7

    move v7, v2

    move v2, v0

    move v0, v1

    :goto_1
    invoke-static {v5}, Lcom/mokee/cloud/location/CloudNumber;->a(Ljava/lang/String;)[C

    move-result-object v5

    invoke-static {v5}, Lcom/mokee/cloud/location/CloudNumber;->a([C)Ljava/lang/String;

    move-result-object v10

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v5, v8, 0x1

    aput-object v10, v9, v8

    add-int v0, v2, v7

    if-lt v0, v3, :cond_0

    const-string/jumbo v4, "\u00d7\u0080)Gk\u00f7P\u00fd\u009d0Bq\u00a8\"\u000e\u00b8\u0098,O%\u00fbl\u00ec\u008b7@`\u00e6,"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0xe

    move v2, v0

    move v0, v1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int v7, v0, v2

    invoke-virtual {v4, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v8, v5

    move-object v5, v7

    move v7, v2

    move v2, v0

    move v0, v6

    goto :goto_1

    :cond_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    :pswitch_0
    add-int/lit8 v5, v8, 0x1

    aput-object v10, v9, v8

    add-int v0, v2, v7

    if-lt v0, v3, :cond_1

    sput-object v9, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v0, v0, v1

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber;->a:Ljava/lang/String;

    const/16 v0, 0xbb8

    sput v0, Lcom/mokee/cloud/location/CloudNumber;->b:I

    const/16 v0, 0x3a98

    sput v0, Lcom/mokee/cloud/location/CloudNumber;->c:I

    return-void

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a([C)Ljava/lang/String;
    .locals 4

    array-length v1, p0

    const/4 v0, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-le v2, v1, :cond_0

    aget-char v3, p0, v1

    rem-int/lit8 v0, v1, 0x7

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x2

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x98

    goto :goto_1

    :pswitch_1
    const/16 v0, 0xee

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x45

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x2e

    goto :goto_1

    :pswitch_4
    const/4 v0, 0x5

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x92

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private static a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {p6}, Lcom/mokee/cloud/location/LocationUtils;->rewritePhoneLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneType(Ljava/lang/String;)Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    move-result-object v0

    invoke-static {p2, p4}, Lcom/mokee/cloud/misc/CloudUtils;->inContactList(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move-object v6, v0

    :goto_0
    invoke-static {v6}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v4

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v5

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0xb

    aget-object v0, v0, v4

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-interface {p1, p4, v3, v6, v0}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V

    return-void

    :cond_1
    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    move-object v6, v0

    move-object v3, p5

    goto :goto_0
.end method

.method private static a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v0}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v4

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v5

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    invoke-static/range {v0 .. v5}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v1, 0x3

    aget-object v1, v0, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x6

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-interface {p0, p3, p4, v0, v1}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)[C
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    aget-char v1, v0, v3

    xor-int/lit8 v1, v1, 0x2

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1()I
    .locals 1

    sget v0, Lcom/mokee/cloud/location/CloudNumber;->c:I

    return v0
.end method

.method static synthetic access$2()I
    .locals 1

    sget v0, Lcom/mokee/cloud/location/CloudNumber;->b:I

    return v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/mokee/cloud/location/CloudNumber;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Z)V
    .locals 0

    sput-boolean p0, Lcom/mokee/cloud/location/CloudNumber;->d:Z

    return-void
.end method

.method static synthetic access$6()Z
    .locals 1

    sget-boolean v0, Lcom/mokee/cloud/location/CloudNumber;->d:Z

    return v0
.end method

.method public static declared-synchronized detect(Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/Context;Z)V
    .locals 15

    const-class v13, Lcom/mokee/cloud/location/CloudNumber;

    monitor-enter v13

    :try_start_0
    sget-boolean v14, Lcom/mokee/cloud/location/CloudNumber;->f:Z

    invoke-static {p0}, Lcom/mokee/cloud/misc/CloudUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    sput-boolean v3, Lcom/mokee/cloud/location/CloudNumber;->d:Z

    sget-object v3, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v5, v3, v5

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v4}, Lcom/mokee/cloud/location/LocationUtils;->getLocationInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/mokee/cloud/location/LocationInfo;

    move-result-object v3

    if-nez v3, :cond_4

    :cond_0
    if-nez v3, :cond_6

    :goto_0
    sget-boolean v5, Lcom/mokee/cloud/misc/CloudUtils;->inBlackList:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_7

    :cond_1
    :try_start_1
    const-string/jumbo v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-nez v5, :cond_c

    :cond_2
    const/4 v5, 0x1

    :try_start_2
    invoke-static {v5}, Landroid/mokee/utils/MoKeeUtils;->isSupportLanguage(Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    if-eqz v5, :cond_d

    :try_start_3
    invoke-static {v4}, Landroid/mokee/location/PhoneNumberOfflineGeocoder;->getPhoneLocation(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v10

    :try_start_4
    invoke-static/range {p2 .. p2}, Lcom/mokee/cloud/misc/CloudUtils;->isConnectedFast(Landroid/content/Context;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v5

    if-nez v5, :cond_e

    :cond_3
    :try_start_5
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_e
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    :try_start_6
    sget-boolean v2, Lcom/mokee/aegis/PacifierInfo;->c:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-nez v2, :cond_16

    :goto_2
    monitor-exit v13

    return-void

    :cond_4
    if-nez p3, :cond_0

    :cond_5
    :try_start_7
    invoke-virtual {v3}, Lcom/mokee/cloud/location/LocationInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcom/mokee/cloud/location/LocationInfo;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeByID(I)Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    move-result-object v3

    sget-object v5, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v2, v3, v5}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit v13

    return-void

    :cond_6
    :try_start_8
    invoke-virtual {v3}, Lcom/mokee/cloud/location/LocationInfo;->getUserMark()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catch_1
    move-exception v2

    :try_start_a
    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v2

    monitor-exit v13

    throw v2

    :cond_7
    :try_start_b
    invoke-static/range {p2 .. p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    sget-object v6, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/16 v7, 0x8

    aget-object v7, v6, v7

    const-wide/16 v8, 0x0

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_8

    :try_start_c
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const/16 v7, 0x8

    aget-object v6, v6, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-interface {v5, v6, v10, v11}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v14, :cond_1

    :cond_8
    const-wide/32 v6, 0x1ee62800

    add-long/2addr v6, v8

    :try_start_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    cmp-long v5, v6, v10

    if-gez v5, :cond_a

    const/4 v5, 0x1

    :goto_3
    if-nez v5, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-wide v6

    cmp-long v5, v8, v6

    if-gtz v5, :cond_b

    const/4 v5, 0x1

    :goto_4
    if-nez v5, :cond_1

    :cond_9
    :try_start_e
    sget-object v5, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    sget-object v6, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v6}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v6

    sget-object v7, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v7}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    sget-object v3, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    monitor-exit v13

    return-void

    :catch_2
    move-exception v2

    :try_start_f
    throw v2

    :cond_a
    const/4 v5, 0x0

    goto :goto_3

    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    :catch_3
    move-exception v2

    throw v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_c
    :try_start_10
    sget-object v5, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_5
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result v5

    if-nez v5, :cond_2

    :cond_d
    :try_start_11
    invoke-static/range {p2 .. p2}, Lcom/mokee/google/OfflineNumber;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/mokee/google/OfflineNumber;->getGeocodedLocationFor(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v6}, Lcom/mokee/cloud/location/LocationUtils;->getPhoneTypeID(Lcom/mokee/cloud/location/CloudNumber$PhoneType;)I

    move-result v6

    sget-object v7, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v7}, Lcom/mokee/cloud/location/LocationUtils;->getEngineTypeID(Lcom/mokee/cloud/location/CloudNumber$EngineType;)I

    move-result v7

    invoke-static/range {v2 .. v7}, Lcom/mokee/cloud/location/LocationUtils;->insertOrUpdateLocationInfo(Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v3, v2, v3

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x2

    aget-object v7, v2, v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x5

    aget-object v2, v2, v7

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    sget-object v3, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    move-object/from16 v0, p1

    invoke-interface {v0, v4, v5, v2, v3}, Lcom/mokee/cloud/location/CloudNumber$Callback;->onResult(Ljava/lang/String;Ljava/lang/String;Lcom/mokee/cloud/location/CloudNumber$PhoneType;Lcom/mokee/cloud/location/CloudNumber$EngineType;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    monitor-exit v13

    return-void

    :catch_4
    move-exception v2

    :try_start_12
    throw v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_5
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :catch_5
    move-exception v2

    :try_start_13
    throw v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :cond_e
    :try_start_14
    sget-object v5, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    :try_start_15
    sget-object v5, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v6, v5, v6

    new-instance v7, Ljava/lang/StringBuilder;

    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0xc

    aget-object v5, v5, v8

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v6

    new-instance v5, Lcom/mokee/cloud/location/a;

    move/from16 v0, p3

    invoke-direct {v5, v4, v0}, Lcom/mokee/cloud/location/a;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v6, v5}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v7

    if-nez p3, :cond_10

    :try_start_16
    sget v5, Lcom/mokee/cloud/location/CloudNumber;->b:I

    :goto_5
    int-to-long v8, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v8, v9, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    :try_start_17
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-boolean v5, Lcom/mokee/cloud/location/CloudNumber;->d:Z
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    if-eqz v5, :cond_15

    :cond_f
    :try_start_18
    sget-object v11, Lcom/mokee/cloud/location/CloudNumber;->e:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/mokee/cloud/location/CloudNumber;->a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_e
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    if-nez v14, :cond_3

    goto/16 :goto_1

    :catch_6
    move-exception v2

    :try_start_19
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    :cond_10
    :try_start_1a
    sget v5, Lcom/mokee/cloud/location/CloudNumber;->c:I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_8
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1

    goto :goto_5

    :catch_7
    move-exception v5

    :try_start_1b
    throw v5
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :catch_8
    move-exception v5

    :try_start_1c
    sget-object v8, Lcom/mokee/cloud/location/CloudNumber;->g:[Ljava/lang/String;

    const/4 v9, 0x3

    aget-object v9, v8, v9

    const/4 v11, 0x7

    aget-object v8, v8, v11

    invoke-static {v9, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x1

    invoke-interface {v7, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    :try_start_1d
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-boolean v5, Lcom/mokee/cloud/location/CloudNumber;->d:Z
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_0

    if-eqz v5, :cond_12

    :cond_11
    :try_start_1e
    sget-object v11, Lcom/mokee/cloud/location/CloudNumber;->e:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/mokee/cloud/location/CloudNumber;->a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_1

    :catch_9
    move-exception v2

    :try_start_1f
    throw v2
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_0

    :cond_12
    :try_start_20
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_9
    .catchall {:try_start_20 .. :try_end_20} :catchall_0

    if-nez v14, :cond_11

    goto/16 :goto_1

    :catchall_1
    move-exception v5

    move-object v12, v5

    :try_start_21
    invoke-interface {v6}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    sget-boolean v5, Lcom/mokee/cloud/location/CloudNumber;->d:Z
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_a
    .catchall {:try_start_21 .. :try_end_21} :catchall_0

    if-eqz v5, :cond_14

    :cond_13
    :try_start_22
    sget-object v11, Lcom/mokee/cloud/location/CloudNumber;->e:Ljava/lang/String;

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-static/range {v5 .. v11}, Lcom/mokee/cloud/location/CloudNumber;->a(Landroid/content/Context;Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_b
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    :goto_6
    :try_start_23
    throw v12
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    :cond_14
    :try_start_24
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_a
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_b
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    if-nez v14, :cond_13

    goto :goto_6

    :catch_a
    move-exception v2

    :try_start_25
    throw v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_25} :catch_b
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    :catch_b
    move-exception v2

    :try_start_26
    throw v2
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_0

    :cond_15
    :try_start_27
    move-object/from16 v0, p1

    invoke-static {v0, v2, v3, v4, v10}, Lcom/mokee/cloud/location/CloudNumber;->a(Lcom/mokee/cloud/location/CloudNumber$Callback;Landroid/content/ContentResolver;Lcom/mokee/cloud/location/LocationInfo;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_c
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_d
    .catchall {:try_start_27 .. :try_end_27} :catchall_0

    if-nez v14, :cond_f

    goto/16 :goto_1

    :catch_c
    move-exception v2

    :try_start_28
    throw v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_d
    .catchall {:try_start_28 .. :try_end_28} :catchall_0

    :catch_d
    move-exception v2

    :try_start_29
    throw v2
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_e
    .catchall {:try_start_29 .. :try_end_29} :catchall_0

    :catch_e
    move-exception v2

    :try_start_2a
    throw v2

    :cond_16
    if-nez v14, :cond_17

    const/4 v2, 0x1

    :goto_7
    sput-boolean v2, Lcom/mokee/cloud/location/CloudNumber;->f:Z
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_0

    goto/16 :goto_2

    :catch_f
    move-exception v2

    :try_start_2b
    throw v2
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_10
    .catchall {:try_start_2b .. :try_end_2b} :catchall_0

    :catch_10
    move-exception v2

    :try_start_2c
    throw v2
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_0

    :cond_17
    const/4 v2, 0x0

    goto :goto_7
.end method
