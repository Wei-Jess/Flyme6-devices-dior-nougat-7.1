.class public Lcom/mokee/mms/utils/CaptchasUtils;
.super Ljava/lang/Object;
.source "CaptchasUtils.java"


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;

.field private static c:[Ljava/lang/String;

.field private static d:[Ljava/lang/String;

.field private static e:[Ljava/lang/String;

.field private static f:[Ljava/lang/String;

.field public static g:Z

.field private static final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v13, 0x4

    const/4 v12, 0x2

    const/4 v6, 0x3

    const/4 v11, 0x1

    const/4 v5, 0x0

    const/16 v0, 0x37

    new-array v9, v0, [Ljava/lang/String;

    const-string/jumbo v3, "\u0000\u00ec\u00ca\u00ddW&.\u0004\u00ea\u0081\u00d4\t\u0002\u30a7\u0083\u00de\u0007X*\u0002\u30a6\t\u0002\u009f\u0083\u00de\u0007X*\u0002\u009e\u0002\u5388\u79df\u0004\u687f\u9ae0\u4e48\u784c\u0004\u77b3\u4f56\u5348\u4e14\u0005o\u0087\u009b\u00c8\u001b\u0004\u687f\u9a3b\u4e48\u78f1\u0004\u4e73\u564a\u80ff\u90ea\u0005o\u0087\u009b\u00c0\u001d\u0003\u7830\u8b13\u78aa\u0003\u6f9e\u6d8c\u7817\u0005\u0005\u4eb7\u0086\u9f55p\u0003\u5c60\u5340\u4e91\u0004\u689e\u9a3b\u4e48\u78f1\u0003\u4efa\u66a4\u78aa\u0004\u52f6\u60b6\u5b6d\u78f1\u0004\u78e4\u8a3a\u4e48\u784c\u0003\u6f9e\u6d8c\u78aa\u0003\u5bd7\u51df\u7817\u0006\u0005\u0087\u0086\u00c9pL\u0004\u528b\u61fc\u5b6d\u784c\u0004\u6afc\u9ae0\u4e48\u784c\u0004\u9a09\u8bfe\u4e48\u784c\u0003\u6afc\u9ae0\u7817\u0004\u7830\u8b13\u4e48\u78f1\u0003\u96d1\u678d\u78aa\u0005\u7dec\u98b6\u8bf3\u52d5\u7891\u0008\u0000\u00ec\u009b\u00dd\u0014:)z\u0002\u5c60\u5340\u0003\u7625\u5fe2\u78aa\u0004\u9ad2\u8b76\u4e48\u78f1\u000e\u0005\u00d6\u0086\u008alJYn\u009a\u0092\u00ac\u0003:(\t\u0002\u00ec\u0083\u00de\u0007X*\u0002\u00ea\u0004\u4e73\u564a\u7950\u5258\u0005o\u0087\u009b\u00c1\u001d\u0004=\u00d8\u00cf\u0095\u0003\u687f\u9a3b\u78aa\u0002\u7576\u4feb\u0004\u52f6\u60b6\u4e48\u78f1\u0003\u8bfa\u8b76\u78aa\u0004\u6f9e\u6d8c\u4e48\u78f1\u0004\u9193\u7fd9\u4e48\u78f1\u0004\u6f9e\u6d8c\u4e48\u784c\u0003\u689e\u9a3b\u78aa\u0003\u52f6\u60b6\u78aa\u0003\u9a09\u8bfe\u7817\u0003\u9ad2\u8b76\u78aa\u0003\u528b\u61fc\u7817\u00027\u00c4\u0003\u6775\u566c\u7817\u0004\u528b\u61fc\u4e48\u784c\u0006\u533f\u5340\u54a5\u562b\u4f60\uff7d"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v1, 0xb

    const/4 v0, -0x1

    move v4, v5

    :goto_0
    add-int/lit8 v7, v0, 0x1

    add-int v0, v7, v1

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v0, -0x1

    move v14, v7

    move v7, v1

    move v1, v14

    move v15, v4

    move-object v4, v8

    move v8, v15

    :goto_1
    invoke-static {v4}, Lcom/mokee/mms/utils/CaptchasUtils;->b(Ljava/lang/String;)[C

    move-result-object v4

    invoke-static {v4}, Lcom/mokee/mms/utils/CaptchasUtils;->a([C)Ljava/lang/String;

    move-result-object v10

    packed-switch v0, :pswitch_data_0

    add-int/lit8 v4, v8, 0x1

    aput-object v10, v9, v8

    add-int v0, v1, v7

    if-lt v0, v2, :cond_0

    const-string/jumbo v3, "\u687f\u9ae0\u7817\u0004\u4e73\u564a\u759e\u4f11"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v0, -0x1

    move v1, v6

    :goto_2
    add-int/lit8 v0, v0, 0x1

    add-int v7, v0, v1

    invoke-virtual {v3, v0, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    move v8, v4

    move-object v4, v7

    move v7, v1

    move v1, v0

    move v0, v5

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_0

    :pswitch_0
    add-int/lit8 v4, v8, 0x1

    aput-object v10, v9, v8

    add-int v0, v1, v7

    if-lt v0, v2, :cond_1

    sput-object v9, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v2, 0x2f

    aget-object v2, v1, v2

    aput-object v2, v0, v5

    const/16 v2, 0x25

    aget-object v2, v1, v2

    aput-object v2, v0, v11

    const/16 v2, 0x12

    aget-object v2, v1, v2

    aput-object v2, v0, v12

    const/16 v2, 0xa

    aget-object v2, v1, v2

    aput-object v2, v0, v6

    const/16 v2, 0x2c

    aget-object v2, v1, v2

    aput-object v2, v0, v13

    const/4 v2, 0x5

    const/16 v3, 0x1f

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x6

    const/16 v3, 0x29

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/4 v2, 0x7

    const/4 v3, 0x7

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x8

    const/16 v3, 0x27

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x9

    const/16 v3, 0x2a

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0xa

    const/16 v3, 0xe

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0xb

    const/16 v3, 0x19

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0xc

    const/4 v3, 0x5

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0xd

    const/16 v3, 0x10

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0xe

    const/16 v3, 0xf

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0xf

    const/16 v3, 0x2e

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x10

    const/16 v3, 0xb

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x11

    const/16 v3, 0x30

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x12

    const/16 v3, 0x35

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x13

    const/16 v3, 0x18

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x14

    const/16 v3, 0x17

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x15

    const/16 v3, 0x2b

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x16

    aget-object v3, v1, v13

    aput-object v3, v0, v2

    const/16 v2, 0x17

    const/16 v3, 0x11

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x18

    const/16 v3, 0x33

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x19

    const/16 v3, 0x16

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x1a

    const/16 v3, 0x28

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x1b

    const/16 v3, 0x1a

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x1c

    const/16 v3, 0x2d

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x1d

    const/16 v3, 0x13

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x1e

    const/16 v3, 0x1e

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    const/16 v2, 0x1f

    const/16 v3, 0x15

    aget-object v3, v1, v3

    aput-object v3, v0, v2

    sput-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->a:[Ljava/lang/String;

    new-array v0, v12, [Ljava/lang/String;

    const/16 v2, 0x24

    aget-object v2, v1, v2

    aput-object v2, v0, v5

    const/16 v2, 0x31

    aget-object v2, v1, v2

    aput-object v2, v0, v11

    sput-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->b:[Ljava/lang/String;

    new-array v0, v13, [Ljava/lang/String;

    const-string/jumbo v2, "\u662f"

    aput-object v2, v0, v5

    const/16 v2, 0x26

    aget-object v2, v1, v2

    aput-object v2, v0, v11

    const-string/jumbo v2, "\u4e3a"

    aput-object v2, v0, v12

    const-string/jumbo v2, "\u70ba"

    aput-object v2, v0, v6

    sput-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->c:[Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/16 v2, 0x1d

    aget-object v2, v1, v2

    aput-object v2, v0, v5

    const/16 v2, 0xd

    aget-object v2, v1, v2

    aput-object v2, v0, v11

    const/16 v2, 0x34

    aget-object v2, v1, v2

    aput-object v2, v0, v12

    const/16 v2, 0x32

    aget-object v2, v1, v2

    aput-object v2, v0, v6

    const/16 v2, 0x1b

    aget-object v2, v1, v2

    aput-object v2, v0, v13

    sput-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->d:[Ljava/lang/String;

    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v2, "\u5143"

    aput-object v2, v0, v5

    sput-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->e:[Ljava/lang/String;

    new-array v0, v11, [Ljava/lang/String;

    aget-object v1, v1, v6

    aput-object v1, v0, v5

    sput-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->f:[Ljava/lang/String;

    return-void

    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto/16 :goto_2

    nop

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

.method private static a(Ljava/lang/String;)I
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v1, 0x1c

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0

    :cond_1
    return v2
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v1, 0x23

    aget-object v1, v0, v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_1
    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v1, 0x9

    aget-object v1, v0, v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    return-object p0

    :cond_0
    const/16 v1, 0x8

    aget-object p0, v0, v1

    goto :goto_0

    :cond_1
    const/16 v1, 0x22

    aget-object p0, v0, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0x36

    aget-object p0, v0, v1

    goto :goto_2
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

    const/4 v0, 0x3

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x5e

    goto :goto_1

    :pswitch_1
    const/16 v0, 0xb7

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xab

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xf0

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x2d

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x67

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

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

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v1, 0x0

    sget-boolean v3, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0xc

    if-gt v0, v2, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/mokee/mms/utils/CaptchasUtils;->b:[Ljava/lang/String;

    array-length v6, v5

    if-nez v3, :cond_4

    move-object v0, v2

    :goto_1
    if-ge v1, v6, :cond_3

    :goto_2
    aget-object v2, v5, v1

    invoke-virtual {v4, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez v3, :cond_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_4
    move-object v0, v2

    goto :goto_2
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    sget-boolean v6, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v7

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xc

    if-gt v3, v4, :cond_2

    :goto_0
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    sget-object v9, Lcom/mokee/mms/utils/CaptchasUtils;->a:[Ljava/lang/String;

    array-length v10, v9

    const/4 v2, 0x0

    if-nez v6, :cond_0

    :goto_1
    if-ge v2, v10, :cond_c

    :cond_0
    aget-object v5, v9, v2

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move-object v4, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-object v3, v4

    goto :goto_1

    :cond_2
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    goto :goto_0

    :cond_3
    sget-object v11, Lcom/mokee/mms/utils/CaptchasUtils;->c:[Ljava/lang/String;

    array-length v12, v11

    const/4 v4, 0x0

    if-nez v6, :cond_d

    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    :goto_2
    if-ge v3, v12, :cond_6

    :goto_3
    aget-object v13, v11, v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_4

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_6
    const/4 v3, 0x1

    sget-object v11, Lcom/mokee/mms/utils/CaptchasUtils;->d:[Ljava/lang/String;

    array-length v12, v11

    const/4 v5, 0x0

    if-nez v6, :cond_7

    :goto_4
    if-ge v5, v12, :cond_9

    :cond_7
    aget-object v13, v11, v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_8

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v3, 0x0

    goto :goto_5

    :cond_9
    if-eqz v3, :cond_1

    sget-object v5, Lcom/mokee/mms/utils/CaptchasUtils;->e:[Ljava/lang/String;

    array-length v11, v5

    const/4 v3, 0x0

    if-nez v6, :cond_a

    :goto_6
    if-ge v3, v11, :cond_1

    :cond_a
    aget-object v12, v5, v3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_b
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_c
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_d
    move/from16 v16, v4

    move-object v4, v3

    move/from16 v3, v16

    goto/16 :goto_3
.end method

.method private static b(Ljava/lang/String;)[C
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

    xor-int/lit8 v1, v1, 0x3

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method public static getCaptchaProvider(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    sget-boolean v2, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    sget-object v3, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_0
    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v6, :cond_0

    invoke-virtual {v3, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/mokee/mms/utils/CaptchasUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    sget-boolean v4, Lcom/mokee/aegis/PacifierInfo;->c:Z

    if-nez v4, :cond_2

    move v0, v1

    :cond_2
    sput-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v3, 0x21

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_4

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/mokee/mms/utils/CaptchasUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v2, :cond_8

    :cond_7
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v6, :cond_7

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lcom/mokee/mms/utils/CaptchasUtils;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_9
    return-object v5
.end method

.method public static isCaptchasEnMessage(Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-boolean v2, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    sget-object v3, Lcom/mokee/mms/utils/CaptchasUtils;->b:[Ljava/lang/String;

    array-length v4, v3

    if-nez v2, :cond_0

    :goto_0
    if-ge v0, v4, :cond_3

    :cond_0
    aget-object v5, v3, v0

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v2, :cond_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isCaptchasMessage(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    sget-boolean v2, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sget-object v3, Lcom/mokee/mms/utils/CaptchasUtils;->a:[Ljava/lang/String;

    array-length v4, v3

    if-nez v2, :cond_0

    :goto_0
    if-ge v0, v4, :cond_3

    :cond_0
    aget-object v5, v3, v0

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v2, :cond_1

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isChineseContains(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v3, 0xc

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "\u3010"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u3011"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "\u3002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1
.end method

.method public static tryToGetCnCaptchas(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, -0x1

    const/4 v1, 0x0

    sget-boolean v5, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    sget-object v3, Lcom/mokee/mms/utils/CaptchasUtils;->f:[Ljava/lang/String;

    array-length v4, v3

    if-nez v5, :cond_9

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_1

    :goto_1
    aget-object v6, v3, v0

    invoke-virtual {p0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v0, ""

    return-object v0

    :cond_1
    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v3, 0x20

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const-string/jumbo v0, ""

    if-nez v5, :cond_8

    move-object v3, v0

    move v0, v2

    :cond_2
    :goto_2
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x3

    if-le v4, v7, :cond_2

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0x8

    if-ge v4, v7, :cond_2

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "."

    invoke-virtual {v4, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "*"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/mokee/mms/utils/CaptchasUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v0, v2, :cond_3

    :goto_4
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mokee/mms/utils/CaptchasUtils;->a(Ljava/lang/String;)I

    move-result v4

    if-gt v4, v0, :cond_4

    :goto_5
    move v0, v4

    goto :goto_2

    :cond_3
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    sget-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z

    if-nez v0, :cond_6

    :goto_6
    return-object v3

    :cond_6
    if-nez v5, :cond_7

    const/4 v1, 0x1

    :cond_7
    sput-boolean v1, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    goto :goto_6

    :cond_8
    move-object v3, v0

    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v1

    goto/16 :goto_1
.end method

.method public static tryToGetEnCaptchas(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/mokee/mms/utils/CaptchasUtils;->h:[Ljava/lang/String;

    const/16 v1, 0x14

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sget-boolean v1, Lcom/mokee/mms/utils/CaptchasUtils;->g:Z

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    if-nez v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/mokee/mms/utils/CaptchasUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const-string/jumbo v0, ""

    return-object v0
.end method
