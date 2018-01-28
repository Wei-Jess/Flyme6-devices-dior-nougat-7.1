.class public final enum Lcom/mokee/cloud/location/CloudNumber$PhoneType;
.super Ljava/lang/Enum;
.source "CloudNumber.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mokee/cloud/location/CloudNumber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mokee/cloud/location/CloudNumber$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADVERTISEMENT:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

.field public static final enum FRAUD:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

.field public static final enum HARASS:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

.field public static final enum NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

.field private static final synthetic a:[Lcom/mokee/cloud/location/CloudNumber$PhoneType;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v1, -0x1

    const/4 v6, 0x0

    const/4 v0, 0x4

    new-array v9, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\u00ad\u00a9\u0002n\u00af\u0006\u00a3\u00ba\u0011z\u00b8>"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, 0x5

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
    invoke-static {v5}, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->a(Ljava/lang/String;)[C

    move-result-object v5

    invoke-static {v5}, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->a([C)Ljava/lang/String;

    move-result-object v10

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v5, v8, 0x1

    aput-object v10, v9, v8

    add-int v0, v2, v7

    if-lt v0, v3, :cond_0

    const-string/jumbo v4, "\u00a5\u00b4\u0011v\u00aa!\r\u00aa\u00bf\u0015~\u00b99\u00c4\u00b8\u00be\u000e~\u00a59"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x6

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

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aget-object v1, v9, v13

    invoke-direct {v0, v1, v6}, Lcom/mokee/cloud/location/CloudNumber$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->ADVERTISEMENT:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aget-object v1, v9, v6

    invoke-direct {v0, v1, v11}, Lcom/mokee/cloud/location/CloudNumber$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->FRAUD:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aget-object v1, v9, v11

    invoke-direct {v0, v1, v12}, Lcom/mokee/cloud/location/CloudNumber$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->HARASS:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    new-instance v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aget-object v1, v9, v12

    invoke-direct {v0, v1, v13}, Lcom/mokee/cloud/location/CloudNumber$PhoneType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->ADVERTISEMENT:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->FRAUD:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->HARASS:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->NORMAL:Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    aput-object v1, v0, v13

    sput-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->a:[Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    return-void

    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static a([C)Ljava/lang/String;
    .locals 5

    const/16 v1, 0xeb

    array-length v2, p0

    const/4 v0, 0x0

    move v3, v2

    move v2, v0

    :goto_0
    if-le v3, v2, :cond_0

    aget-char v4, p0, v2

    rem-int/lit8 v0, v2, 0x7

    packed-switch v0, :pswitch_data_0

    const/16 v0, 0x8d

    :goto_1
    xor-int/2addr v0, v4

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :pswitch_0
    move v0, v1

    goto :goto_1

    :pswitch_1
    const/16 v0, 0xfb

    goto :goto_1

    :pswitch_2
    const/16 v0, 0x43

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x3b

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x6d

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
        :pswitch_0
        :pswitch_4
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

    xor-int/lit16 v1, v1, 0x8d

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mokee/cloud/location/CloudNumber$PhoneType;
    .locals 1

    const-class v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    return-object v0
.end method

.method public static values()[Lcom/mokee/cloud/location/CloudNumber$PhoneType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/mokee/cloud/location/CloudNumber$PhoneType;->a:[Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    array-length v1, v0

    new-array v2, v1, [Lcom/mokee/cloud/location/CloudNumber$PhoneType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
