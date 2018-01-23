.class public Lcom/mokee/security/RSAUtils;
.super Ljava/lang/Object;
.source "RSAUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "\u0019\u00e0M\u001a6`vd\u00e3Gv \u0012d*\u00d7h\\\u001dD\u0003\u0019\u00e0M"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v1, 0x14

    const/4 v0, -0x1

    :goto_0
    add-int/lit8 v0, v0, 0x1

    add-int v3, v0, v1

    invoke-virtual {v5, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mokee/security/RSAUtils;->a(Ljava/lang/String;)[C

    move-result-object v3

    invoke-static {v3}, Lcom/mokee/security/RSAUtils;->a([C)Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v3, v2, 0x1

    aput-object v7, v4, v2

    add-int/2addr v0, v1

    if-lt v0, v6, :cond_0

    sput-object v4, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v2, v3

    goto :goto_0
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

    const/16 v0, 0x34

    :goto_1
    xor-int/2addr v0, v3

    int-to-char v0, v0

    int-to-char v0, v0

    aput-char v0, p0, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x4b

    goto :goto_1

    :pswitch_1
    const/16 v0, 0xb3

    goto :goto_1

    :pswitch_2
    const/16 v0, 0xc

    goto :goto_1

    :pswitch_3
    const/16 v0, 0x35

    goto :goto_1

    :pswitch_4
    const/16 v0, 0x73

    goto :goto_1

    :pswitch_5
    const/16 v0, 0x23

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

    xor-int/lit8 v1, v1, 0x34

    int-to-char v1, v1

    int-to-char v1, v1

    aput-char v1, v0, v3

    goto :goto_0
.end method

.method protected static rsaDecryptByPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/mokee/security/RSAUtils;->rsaDecryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static rsaDecryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/mokee/security/SecurityUtils;->getPrivateRSAPrivKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mokee/security/RSAUtils;->rsaDecryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaDecryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v10, 0x80

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    sget-boolean v5, Lcom/mokee/security/SecurityUtils;->b:Z

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6

    const/4 v2, 0x2

    invoke-virtual {v6, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p0}, Lcom/mokee/security/SecurityUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v7

    array-length v8, v7

    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v5, :cond_5

    move v0, v1

    move v2, v1

    :goto_0
    sub-int v3, v8, v2

    if-lez v3, :cond_2

    :goto_1
    sub-int v3, v8, v2

    if-gt v3, v10, :cond_1

    :cond_0
    sub-int v3, v8, v2

    invoke-virtual {v6, v7, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    :goto_2
    array-length v3, v2

    invoke-virtual {v9, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0x80

    goto :goto_0

    :cond_1
    invoke-virtual {v6, v7, v2, v10}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    if-nez v5, :cond_0

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    :try_start_0
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    sget-boolean v0, Lcom/mokee/aegis/PacifierInfo;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    :goto_3
    return-object v2

    :cond_3
    if-nez v5, :cond_4

    move v1, v4

    :cond_4
    sput-boolean v1, Lcom/mokee/security/SecurityUtils;->b:Z

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    throw v0

    :cond_5
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public static rsaDecryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcom/mokee/security/RSAUtils;->rsaDecryptByPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaDecryptByPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v9, 0x80

    const/4 v1, 0x0

    sget-boolean v4, Lcom/mokee/security/SecurityUtils;->b:Z

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    const/4 v2, 0x2

    invoke-virtual {v5, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-static {p0}, Lcom/mokee/security/SecurityUtils;->toByte(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v4, :cond_3

    move v0, v1

    move v2, v1

    :goto_0
    sub-int v3, v7, v2

    if-lez v3, :cond_2

    :goto_1
    sub-int v3, v7, v2

    if-gt v3, v9, :cond_1

    :cond_0
    sub-int v3, v7, v2

    invoke-virtual {v5, v6, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    :goto_2
    array-length v3, v2

    invoke-virtual {v8, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    mul-int/lit16 v2, v0, 0x80

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6, v2, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    if-nez v4, :cond_0

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method protected static rsaEncryptByPrivateKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcom/mokee/security/RSAUtils;->rsaEncryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static rsaEncryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/mokee/security/SecurityUtils;->getPrivateRSAPrivKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/mokee/security/RSAUtils;->rsaEncryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaEncryptByPrivateKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v9, 0x75

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    sget-boolean v4, Lcom/mokee/security/SecurityUtils;->b:Z

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v4, :cond_3

    move v0, v1

    move v2, v1

    :goto_0
    sub-int v3, v7, v2

    if-lez v3, :cond_2

    :goto_1
    sub-int v3, v7, v2

    if-gt v3, v9, :cond_1

    :cond_0
    sub-int v3, v7, v2

    invoke-virtual {v5, v6, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    :goto_2
    array-length v3, v2

    invoke-virtual {v8, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v0, 0x75

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6, v2, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    if-nez v4, :cond_0

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v0}, Lcom/mokee/security/SecurityUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_1
.end method

.method public static rsaEncryptByPublicKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/mokee/security/SecurityUtils;->authorized()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {}, Lcom/mokee/security/SecurityUtils;->getPrivateRSAPubKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/mokee/security/RSAUtils;->rsaEncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    throw v0
.end method

.method public static rsaEncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {p0, v0, p1}, Lcom/mokee/security/RSAUtils;->rsaEncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static rsaEncryptByPublicKey(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v9, 0x75

    const/4 v3, 0x1

    const/4 v1, 0x0

    invoke-static {p2, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    sget-boolean v4, Lcom/mokee/security/SecurityUtils;->b:Z

    sget-object v0, Lcom/mokee/security/RSAUtils;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v5

    invoke-virtual {v5, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v7, v6

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-nez v4, :cond_3

    move v0, v1

    move v2, v1

    :goto_0
    sub-int v3, v7, v2

    if-lez v3, :cond_2

    :goto_1
    sub-int v3, v7, v2

    if-gt v3, v9, :cond_1

    :cond_0
    sub-int v3, v7, v2

    invoke-virtual {v5, v6, v2, v3}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v2

    :goto_2
    array-length v3, v2

    invoke-virtual {v8, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v2, v0, 0x75

    goto :goto_0

    :cond_1
    invoke-virtual {v5, v6, v2, v9}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object v3

    if-nez v4, :cond_0

    move-object v2, v3

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v0}, Lcom/mokee/security/SecurityUtils;->toHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v1

    move v2, v1

    goto :goto_1
.end method
