.class public Lcom/mokee/cloud/calendar/SolarFestival;
.super Ljava/lang/Object;
.source "SolarFestival.java"


# static fields
.field private static final a:Ljava/lang/String;

.field public static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "\u001ca\u00b3\u0082"

    invoke-static {v0}, Lcom/mokee/cloud/calendar/SolarFestival;->a(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {v0}, Lcom/mokee/cloud/calendar/SolarFestival;->a([C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mokee/cloud/calendar/SolarFestival;->a:Ljava/lang/String;

    return-void
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

    const/16 v0, 0x61

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x39

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x51

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x81

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xe6

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xdf

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x9e

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

    xor-int/lit8 v1, v1, 0x61

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method public static getSolarFestivalInfo(II)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/mokee/cloud/calendar/SolarFestival;->a:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    add-int/lit8 v5, p0, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/mokee/cloud/calendar/SolarFestival;->a:Ljava/lang/String;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/mokee/calendar/FestivalInfo;->getFestivalInfo()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    :goto_1
    aget-object v5, v3, v0

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v6, v5, v1

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, v5, v7

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static getSpecificSolarFestivalInfo(III)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    sget-boolean v0, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    invoke-static {}, Landroid/mokee/calendar/FestivalInfo;->getSpecificInfo()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    if-nez v0, :cond_3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_2

    :goto_1
    aget-object v4, v2, v0

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v5, v4, v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    aget-object v5, v4, v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x3

    aget-object v0, v4, v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public static isEaster(III)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    rem-int/lit8 v2, p0, 0x13

    div-int/lit8 v3, p0, 0x64

    rem-int/lit8 v4, p0, 0x64

    sget-boolean v5, Lcom/mokee/cloud/calendar/SolarFestival;->b:Z

    div-int/lit8 v6, v3, 0x4

    rem-int/lit8 v7, v3, 0x4

    add-int/lit8 v8, v3, 0x8

    div-int/lit8 v8, v8, 0x19

    sub-int v8, v3, v8

    add-int/lit8 v8, v8, 0x1

    div-int/lit8 v8, v8, 0x3

    mul-int/lit8 v9, v2, 0x13

    add-int/2addr v3, v9

    sub-int/2addr v3, v6

    sub-int/2addr v3, v8

    add-int/lit8 v3, v3, 0xf

    rem-int/lit8 v3, v3, 0x1e

    div-int/lit8 v6, v4, 0x4

    rem-int/lit8 v4, v4, 0x4

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x20

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v6, v7

    sub-int/2addr v6, v3

    sub-int v4, v6, v4

    rem-int/lit8 v4, v4, 0x7

    mul-int/lit8 v6, v3, 0xb

    add-int/2addr v2, v6

    mul-int/lit8 v6, v4, 0x16

    add-int/2addr v2, v6

    div-int/lit16 v2, v2, 0x1c3

    add-int v6, v3, v4

    mul-int/lit8 v7, v2, 0x7

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x72

    div-int/lit8 v6, v6, 0x1f

    if-eq p1, v6, :cond_1

    :cond_0
    if-nez v5, :cond_2

    :goto_0
    return v1

    :cond_1
    add-int/2addr v3, v4

    mul-int/lit8 v2, v2, 0x7

    sub-int v2, v3, v2

    add-int/lit8 v2, v2, 0x72

    rem-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    if-ne p2, v2, :cond_0

    return v0

    :cond_2
    sget-boolean v2, Lcom/mokee/aegis/PacifierInfo;->c:Z

    if-nez v2, :cond_3

    :goto_1
    sput-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
