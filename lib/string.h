#include "stdint.h"
void*
memset(void *dst, int c, uint8_t n);

int
memcmp(const void *v1, const void *v2, uint8_t n);

void*
memmove(void *dst, const void *src, uint8_t n);

void*
memcpy(void *dst, const void *src, uint8_t n);


int
strncmp(const char *p, const char *q, uint8_t n);

char*
strncpy(char *s, const char *t, int n);

char*
safestrcpy(char *s, const char *t, int n);

int
strlen(const char *s);

