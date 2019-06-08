static void write(int fd, char const *str, unsigned long long n) {
  asm("\tmov $1, %rax\n"
      "\tsyscall\n");
}

int main(int argc, char *argv[]) {
    char const *message = "Hello, world!\n";
    write(1, message, 15);
    return 0;
}