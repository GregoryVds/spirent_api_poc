package main

import (
	"fmt"

	apiclient "tessares.net/spirent/openapi/client"
)

func main() {
	// Dummy code to validate it compiles

	config := apiclient.NewConfiguration()

	client := apiclient.NewAPIClient(config)

	fmt.Printf("client: %v", client)
}
