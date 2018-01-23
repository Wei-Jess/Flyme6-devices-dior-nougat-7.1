.class public Lcom/mokee/security/LicenseInfo;
.super Ljava/lang/Object;
.source "LicenseInfo.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Float;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDateTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mokee/security/LicenseInfo;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mokee/security/LicenseInfo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/mokee/security/LicenseInfo;->e:Ljava/lang/Float;

    return-object v0
.end method

.method public getUniqueID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mokee/security/LicenseInfo;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/mokee/security/LicenseInfo;->a:I

    return v0
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/security/LicenseInfo;->d:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/security/LicenseInfo;->c:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/security/LicenseInfo;->e:Ljava/lang/Float;

    return-void
.end method

.method public setUniqueID(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mokee/security/LicenseInfo;->b:Ljava/lang/String;

    return-void
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/mokee/security/LicenseInfo;->a:I

    return-void
.end method
