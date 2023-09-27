# Assambly_Language
8086 Microprocessor Emulator, also known as EMU8086, is an emulator of the program 8086 microprocessor. It is developed with a built-in 8086 assembler. This application is able to run programs on both PC desktops and laptops. This tool is primarily designed to copy or emulate hardware.

Code:
<ol>
  <li> <a href="code/159sum.asm"> 1+5+9+13+17 = ? </a> </li>
  <ul>
    <li>
      <p>The assembly code calculates the sum of the first five terms in an arithmetic sequence with a common difference of 4. It uses the ax and bx registers, updates the sum in ax, and stores the result in the answer variable. The loop iterates five times.</p>
    </li>
  </ul>
  <li> <a href="code/convert_capital-and-small.asm"> Convert Capital Word to Small Word </a> </li>
  <ul>
    <li>
      <p>This x86 assembly program, designed for DOS, prompts the user to input a capital letter. It converts the uppercase letter to lowercase by toggling the 6th bit, using the XOR operation with the value 20h. The result is displayed as the corresponding lowercase letter. It utilizes DOS interrupts (21h) for input and output operations. Finally, the program exits, concluding a simple case conversion functionality in assembly language.</p>
    </li>
  </ul>
  <li> <a href="code/STACK.asm"> Push into & Pop from Stack </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code utilizes the stack to manipulate register values. It loads values into registers (ax, bx, cx), pushes them onto the stack, and then performs a series of push and pop operations to swap and rearrange values. Specifically, it pushes ax and bx onto the stack, pops ax into bx, pushes cx and ax, and pops bx and cx. The code demonstrates basic stack manipulation for register value exchange in an assembly program, showcasing the stack's role in temporary storage and manipulation of data.</p>
    </li>
  </ul>
  <li> <a href="code/binary-input-output.asm"> Take 16 bit Binary Input & Show Output </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code reads 16 binary digits as input, converts them to their decimal equivalent, and prints the result. It uses a loop to input the binary digits, processes them, and outputs the corresponding decimal digits. The program handles line feed and carriage return characters for proper formatting. It demonstrates basic input/output operations, bitwise manipulation (AND, OR, SHL), and loop structures in assembly language to convert and display binary numbers in decimal format.</p>
    </li>
  </ul>
  <li> <a href="code/count-number-of-0.asm"> Count Number or 0s in 8 bit Binary </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code processes a binary number stored in the `bh` register. It initializes `ax` to zero and uses a loop to rotate the bits in `bh` to the left. For each rotation, if the carry flag (`jc`) is set, it skips the increment operation; otherwise, it increments `ax`. This loop iterates eight times (specified by `LOOP TOP`), handling each bit of the binary number. The final value of `ax` represents the count of 1s in the binary number. The code uses bitwise operations and rotation to efficiently count the set bits in the binary representation.</p>
    </li>
  </ul>
  <li> <a href="code/mycode5.asm"> Organize 3 words into Ascending Order </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code prompts the user to enter three integers, compares them, and prints them in ascending order. It uses DOS interrupts for input and output. The program compares the values using conditional jumps and the xchg instruction to rearrange them if needed. Finally, it prints the sorted integers. The code demonstrates basic input/output operations, conditional jumps, and register manipulation in assembly language to implement a simple sorting algorithm.</p>
    </li>
  </ul>
  <li> <a href="code/mycode7.asm"> Two User Input numbers odd or even </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code takes two input characters and determines whether they represent an even number, odd number, or an invalid entry. It uses DOS interrupts for input and output, and conditional jumps for decision-making. Messages indicating whether the combination is "EVEN," "ODD," or "INVALID" are displayed. The program concludes with the appropriate message and exits. The code demonstrates basic input/output operations, conditional jumps, and ASCII character comparisons in assembly language for a simple classification task.</p>
    </li>
  </ul>
  <li> <a href="code/mycode8.asm"> Take an Input String Line and count the number of words </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code reads characters from input until a carriage return (0Dh) is encountered, counting the number of characters entered. It uses the counter `cl` to keep track of the characters, increments it for each character input, and stores the count in the `count` variable. Finally, it displays the count using DOS interrupts. The code demonstrates a basic loop structure and character counting in assembly language, with an emphasis on input handling and loop termination conditions.</p>
    </li>
  </ul>
  <li> <a href="code/reverse.asm"> Reverse a Binary value Using Shifting</a> </li>
  <ul>
    <li>
      <p>This x86 assembly code reverses the bits of the binary number stored in the AL register. It initializes the BL register to zero and uses a loop to shift the bits in AL to the left (SHL) and rotate the carry flag into BL (RCR). This process is repeated eight times (specified by LOOP REVERSE) to reverse the order of the bits. After the loop, the BL register contains the reversed bits of the original binary number. The code employs bitwise manipulation and looping to achieve the bit reversal.</p>
    </li>
  </ul>
  <li> <a href="code/stack_reverse-print.asm"> Reverse an Input taken String Line using <b> Stack </b> </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code reads characters from input until a carriage return (0Dh) is encountered. It pushes each character onto the stack while incrementing a counter (`cx`). After reading the input, it pops and prints characters from the stack, effectively reversing the input. Additionally, the program reads two more characters and performs a simple summation and printing operation. The code utilizes DOS interrupts for input/output and demonstrates stack operations, looping, and basic arithmetic in assembly language. Note that the code has an issue: it should use the `add` instruction instead of `or` for the summation part.</p>
    </li>
  </ul>
  <li> <a href="code/sum_1009590.....asm"> 100+95+90+ ... (20th) </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code calculates the sum of a series of 20 terms. It initializes `ax` to 0, `bx` to 100, and uses a loop (`loop summation`) to add `bx` to `ax` in each iteration. The value of `bx` is then decremented by 5 in each iteration. The result is stored in the `answer` variable. The loop continues for a total of 20 iterations. Note that the `loop` instruction automatically decrements the `cx` register and jumps to the specified label (`summation`) as long as `cx` is not zero. Finally, the program ends.</p>
    </li>
  </ul>
  <li> <a href="code/sum_258....asm"> 2+5+8+ ... (20th) </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code calculates the sum of a series of 20 terms. It initializes `ax` to 0, `bx` to 2, and uses a loop (`loop summation`) to add `bx` to `ax` in each iteration. The value of `bx` is then incremented by 3 in each iteration. The result is stored in the `answer` variable. The loop continues for a total of 20 iterations. Note that the `loop` instruction automatically decrements the `cx` register and jumps to the specified label (`summation`) as long as `cx` is not zero. Finally, the program ends.</p>
    </li>
  </ul>
  <li> <a href="code/sum_using-and-or.asm"> Summation using and or </a> </li>
  <ul>
    <li>
      <p>This x86 assembly code reads two characters from input, interprets them as ASCII digits, adds them, and prints the result. After prompting the user for input, it reads and converts the characters into numerical values, performs addition, and adjusts the result to ensure it is in valid ASCII format. The adjustment involves setting the 5th bit and clearing the 6th bit. Finally, it prints the modified result. This code showcases basic input/output operations, ASCII arithmetic, and bitwise manipulation in assembly language, demonstrating a simple program for reading, processing, and displaying numeric input.</p>
    </li>
  </ul>
</ol>
