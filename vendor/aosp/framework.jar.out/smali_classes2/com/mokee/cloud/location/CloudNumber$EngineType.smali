.class public final enum Lcom/mokee/cloud/location/CloudNumber$EngineType;
.super Ljava/lang/Enum;
.source "CloudNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/cloud/location/CloudNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mokee/cloud/location/CloudNumber$EngineType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

.field public static final enum ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

.field private static final synthetic a:[Lcom/mokee/cloud/location/CloudNumber$EngineType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v3, 0x0

    new-array v5, v10, [Ljava/lang/String;

    const-string/jumbo v6, "F\u00c2U\u00eb\ro\u0007F\u00ca_\u00ee\ndr"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v1, 0x6

    const/4 v0, -0x1

    move v2, v3

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int v4, v0, v1

    invoke-virtual {v6, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mokee/cloud/location/CloudNumber$EngineType;->a(Ljava/lang/String;)[C

    move-result-object v4

    invoke-static {v4}, Lcom/mokee/cloud/location/CloudNumber$EngineType;->a([C)Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v4, v2, 0x1

    aput-object v8, v5, v2

    add-int/2addr v0, v1

    if-lt v0, v7, :cond_0

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    aget-object v1, v5, v3

    invoke-direct {v0, v1, v3}, Lcom/mokee/cloud/location/CloudNumber$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    aget-object v1, v5, v9

    invoke-direct {v0, v1, v9}, Lcom/mokee/cloud/location/CloudNumber$EngineType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    new-array v0, v10, [Lcom/mokee/cloud/location/CloudNumber$EngineType;

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$EngineType;->ONLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$EngineType;->OFFLINE:Lcom/mokee/cloud/location/CloudNumber$EngineType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->a:[Lcom/mokee/cloud/location/CloudNumber$EngineType;

    return-void

    :cond_0
    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v4

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

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

    const/16 v0, 0x37

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x9

    goto :goto_1

    :pswitch_1
    const/16 v0, 0x8c

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x19

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xa2

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x43

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x2a

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

    xor-int/lit8 v1, v1, 0x37

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mokee/cloud/location/CloudNumber$EngineType;
    .locals 1

    const-class v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;

    return-object v0
.end method

.method public static values()[Lcom/mokee/cloud/location/CloudNumber$EngineType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$EngineType;->a:[Lcom/mokee/cloud/location/CloudNumber$EngineType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mokee/cloud/location/CloudNumber$EngineType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
